require_relative 'spec_helper'

RSpec.describe 'Invoices' do
  before(:all) do
    @client = build_client
    @product_family = Factories::ProductFamily.create(@client)
    @customer = Factories::Customer.create(@client)
    @product = Factories::Product.create(@client, product_family: @product_family)
    @subscription = Factories::Subscription.create(@client, customer: @customer, product: @product)
    @coupon = Factories::Coupon.create(@client, product_family: @product_family, product: @product, percentage: '50')
  end

  it 'creates and voids the invoice, then lists invoice events' do
    invoice = @client.invoices.create_invoice(
      @subscription.id,
      body: AdvancedBilling::CreateInvoiceRequest.new(
        AdvancedBilling::CreateInvoice.new(
          [
            AdvancedBilling::CreateInvoiceItem.new(
              'A Product',
              12,
              '150.00',
              nil,
              nil,
              nil,
              nil,
              nil,
              nil,
              nil,
              nil,
              'test invoice'
            )
          ],
          Date.iso8601('2024-01-01'),
          nil,
          nil,
          nil,
          nil,
          AdvancedBilling::CreateInvoiceAddress.new(
            'Hilario',
            'Schmidt',
            '282-329-2085',
            '65581 Auer Expressway',
            nil,
            nil,
            nil,
            '15217',
            'US'
          ),
          nil,
          [
            AdvancedBilling::CreateInvoiceCoupon.new(
              @coupon.code,
              50.0
            )
          ]
        )
      )
    ).invoice

    expect(invoice.billing_address.country).to eq('US')
    expect(invoice.billing_address.street).to eq('65581 Auer Expressway')
    expect(invoice.billing_address.zip).to eq('15217')
    expect(invoice.customer.email).to eq(@customer.email)
    expect(invoice.customer.first_name).to eq(@customer.first_name)
    expect(invoice.customer.last_name).to eq(@customer.last_name)
    expect(invoice.due_amount).to eq('900.0')
    expect(invoice.discount_amount).to eq('900.0')
    expect(invoice.due_date).to eq('2024-01-01')
    expect(invoice.issue_date).to eq('2024-01-01')
    expect(invoice.discounts.size).to eq(1)
    expect(invoice.discounts.first.code).to eq(@coupon.code)
    expect(invoice.discounts.first.percentage).to eq('50.0')
    expect(invoice.line_items.size).to eq(1)
    expect(invoice.line_items.first.quantity).to eq('12.0')
    expect(invoice.line_items.first.subtotal_amount).to eq('1800.0')
    expect(invoice.line_items.first.discount_amount).to eq('900.0')
    expect(invoice.line_items.first.total_amount).to eq('900.0')
    expect(invoice.line_items.first.unit_price).to eq('150.0')

    result = @client.invoices.void_invoice(
      invoice.uid,
      body: AdvancedBilling::VoidInvoiceRequest.new(
        AdvancedBilling::VoidInvoice.new(
          'Duplicate invoice'
        )
      )
    )

    expect(result.status).to eq('voided')

    sleep(2) # wait for the indexing

    events = @client.invoices.list_invoice_events(
      'since_date' => Date.iso8601((Date.today - 1).strftime('%Y-%m-%d')),
      'event_types' => [
        AdvancedBilling::InvoiceEventType::VOID_INVOICE
      ],
      'per_page' => 2,
      'invoice_uid' => invoice.uid
    ).events

    expect(events.size).to eq(1)
    expect(events.first.event_type).to eq('void_invoice')
    expect(events.first.event_data.applied_amount).to eq('900.0')
    expect(events.first.invoice.uid).to eq(invoice.uid)

    events = @client.invoices.list_invoice_events(
      'since_date' => Date.iso8601((Date.today - 1).strftime('%Y-%m-%d')),
      'event_types' => [
        AdvancedBilling::InvoiceEventType::ISSUE_INVOICE,
        AdvancedBilling::InvoiceEventType::VOID_INVOICE
      ],
      'per_page' => 4,
      'invoice_uid' => invoice.uid
    ).events

    expect(events.size).to eq(2)
  end

  it 'raises error on attempt to create invalid invoice' do
    expect {
      @client.invoices.create_invoice(
        @subscription.id,
        body: AdvancedBilling::CreateInvoiceRequest.new(
          AdvancedBilling::CreateInvoice.new(
            [
              AdvancedBilling::CreateInvoiceItem.new(
                'A Product',
                12,
                '150.00',
                nil,
                nil,
                Date.iso8601('2024-01-01'),
                Date.iso8601('2023-01-01'),
                nil,
                nil,
                nil,
                nil,
                'test invoice'
              )
            ],
            Date.iso8601('2024-01-01'),
            nil,
            nil,
            nil,
            nil,
            AdvancedBilling::CreateInvoiceAddress.new(
              'Hilario',
              'Schmidt',
              '282-329-2085',
              '65581 Auer Expressway',
              nil,
              nil,
              nil,
              '15217',
              'US'
            ),
            nil,
            [
              AdvancedBilling::CreateInvoiceCoupon.new(
                @coupon.code,
                50.0
              )
            ]
          )
        )
      )
    }.to raise_error do |error|
      expect(error).to be_a(AdvancedBilling::ErrorArrayMapResponseException)
      expect(error.response.status_code).to eq(422)
      expect(JSON.parse(error.response.raw_body)).to eq({
        "errors" => {
          "line_items[0].period_range_end" => ["Must be greater or equal to period_range_start."]
        }
      })
    end
  end
end
