# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreditNote1 Model.
  class CreditNote1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier for the credit note. It is generated automatically by
    # Chargify and has the prefix "cn_" followed by alphanumeric characters.
    # @return [String]
    attr_accessor :uid

    # ID of the site to which the credit note belongs.
    # @return [Integer]
    attr_accessor :site_id

    # ID of the customer to which the credit note belongs.
    # @return [Integer]
    attr_accessor :customer_id

    # ID of the subscription that generated the credit note.
    # @return [Integer]
    attr_accessor :subscription_id

    # A unique, identifying string that appears on the credit note and in places
    # it is referenced.
    # While the UID is long and not appropriate to show to customers, the number
    # is usually shorter and consumable by the customer and the merchant alike.
    # @return [String]
    attr_accessor :number

    # A monotonically increasing number assigned to credit notes as they are
    # created.  This number is unique within a site and can be used to sort and
    # order credit notes.
    # @return [Integer]
    attr_accessor :sequence_number

    # Date the credit note was issued to the customer.  This is the date that
    # the credit was made available for application, and may come before it is
    # fully applied.
    # The format is `"YYYY-MM-DD"`.
    # @return [String]
    attr_accessor :issue_date

    # Credit notes are applied to invoices to offset invoiced amounts - they
    # reduce the amount due. This field is the date the credit note became fully
    # applied to invoices.
    # If the credit note has been partially applied, this field will not have a
    # value until it has been fully applied.
    # The format is `"YYYY-MM-DD"`.
    # @return [String]
    attr_accessor :applied_date

    # Current status of the credit note.
    # @return [CreditNoteStatus]
    attr_accessor :status

    # The ISO 4217 currency code (3 character string) representing the currency
    # of the credit note amount fields.
    # @return [String]
    attr_accessor :currency

    # The memo printed on credit note, which is a description of the reason for
    # the credit.
    # @return [String]
    attr_accessor :memo

    # The memo printed on credit note, which is a description of the reason for
    # the credit.
    # @return [Seller]
    attr_accessor :seller

    # The memo printed on credit note, which is a description of the reason for
    # the credit.
    # @return [Customer1]
    attr_accessor :customer

    # The memo printed on credit note, which is a description of the reason for
    # the credit.
    # @return [BillingAddress]
    attr_accessor :billing_address

    # The memo printed on credit note, which is a description of the reason for
    # the credit.
    # @return [ShippingAddress]
    attr_accessor :shipping_address

    # Subtotal of the credit note, which is the sum of all line items before
    # discounts or taxes. Note that this is a positive amount representing the
    # credit back to the customer.
    # @return [String]
    attr_accessor :subtotal_amount

    # Total discount applied to the credit note. Note that this is a positive
    # amount representing the discount amount being credited back to the
    # customer (i.e. a credit on an earlier discount). For example, if the
    # original purchase was $1.00 and the original discount was $0.10, a credit
    # of $0.50 of the original purchase (half) would have a discount credit of
    # $0.05 (also half).
    # @return [String]
    attr_accessor :discount_amount

    # Total tax of the credit note. Note that this is a positive amount
    # representing a previously taxex amount being credited back to the customer
    # (i.e. a credit of an earlier tax). For example, if the original purchase
    # was $1.00 and the original tax was $0.10, a credit of $0.50 of the
    # original purchase (half) would also have a tax credit of $0.05 (also
    # half).
    # @return [String]
    attr_accessor :tax_amount

    # The credit note total, which is `subtotal_amount - discount_amount +
    # tax_amount`.'
    # @return [String]
    attr_accessor :total_amount

    # The amount of the credit note that has already been applied to invoices.
    # @return [String]
    attr_accessor :applied_amount

    # The amount of the credit note remaining to be applied to invoices, which
    # is `total_amount - applied_amount`.
    # @return [String]
    attr_accessor :remaining_amount

    # Line items on the credit note.
    # @return [Array[CreditNoteLineItem]]
    attr_accessor :line_items

    # Line items on the credit note.
    # @return [Array[InvoiceDiscount]]
    attr_accessor :discounts

    # Line items on the credit note.
    # @return [Array[InvoiceTax]]
    attr_accessor :taxes

    # Line items on the credit note.
    # @return [Array[CreditNoteApplication]]
    attr_accessor :applications

    # Line items on the credit note.
    # @return [Array[InvoiceRefund]]
    attr_accessor :refunds

    # An array of origin invoices for the credit note. Learn more about [Origin
    # Invoice from our
    # docs](https://chargify.zendesk.com/hc/en-us/articles/4407753036699#origin-
    # invoices)
    # @return [Array[OriginInvoice]]
    attr_accessor :origin_invoices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['site_id'] = 'site_id'
      @_hash['customer_id'] = 'customer_id'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['number'] = 'number'
      @_hash['sequence_number'] = 'sequence_number'
      @_hash['issue_date'] = 'issue_date'
      @_hash['applied_date'] = 'applied_date'
      @_hash['status'] = 'status'
      @_hash['currency'] = 'currency'
      @_hash['memo'] = 'memo'
      @_hash['seller'] = 'seller'
      @_hash['customer'] = 'customer'
      @_hash['billing_address'] = 'billing_address'
      @_hash['shipping_address'] = 'shipping_address'
      @_hash['subtotal_amount'] = 'subtotal_amount'
      @_hash['discount_amount'] = 'discount_amount'
      @_hash['tax_amount'] = 'tax_amount'
      @_hash['total_amount'] = 'total_amount'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash['remaining_amount'] = 'remaining_amount'
      @_hash['line_items'] = 'line_items'
      @_hash['discounts'] = 'discounts'
      @_hash['taxes'] = 'taxes'
      @_hash['applications'] = 'applications'
      @_hash['refunds'] = 'refunds'
      @_hash['origin_invoices'] = 'origin_invoices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        site_id
        customer_id
        subscription_id
        number
        sequence_number
        issue_date
        applied_date
        status
        currency
        memo
        seller
        customer
        billing_address
        shipping_address
        subtotal_amount
        discount_amount
        tax_amount
        total_amount
        applied_amount
        remaining_amount
        line_items
        discounts
        taxes
        applications
        refunds
        origin_invoices
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid = SKIP,
                   site_id = SKIP,
                   customer_id = SKIP,
                   subscription_id = SKIP,
                   number = SKIP,
                   sequence_number = SKIP,
                   issue_date = SKIP,
                   applied_date = SKIP,
                   status = SKIP,
                   currency = SKIP,
                   memo = SKIP,
                   seller = SKIP,
                   customer = SKIP,
                   billing_address = SKIP,
                   shipping_address = SKIP,
                   subtotal_amount = SKIP,
                   discount_amount = SKIP,
                   tax_amount = SKIP,
                   total_amount = SKIP,
                   applied_amount = SKIP,
                   remaining_amount = SKIP,
                   line_items = SKIP,
                   discounts = SKIP,
                   taxes = SKIP,
                   applications = SKIP,
                   refunds = SKIP,
                   origin_invoices = SKIP)
      @uid = uid unless uid == SKIP
      @site_id = site_id unless site_id == SKIP
      @customer_id = customer_id unless customer_id == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @number = number unless number == SKIP
      @sequence_number = sequence_number unless sequence_number == SKIP
      @issue_date = issue_date unless issue_date == SKIP
      @applied_date = applied_date unless applied_date == SKIP
      @status = status unless status == SKIP
      @currency = currency unless currency == SKIP
      @memo = memo unless memo == SKIP
      @seller = seller unless seller == SKIP
      @customer = customer unless customer == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @shipping_address = shipping_address unless shipping_address == SKIP
      @subtotal_amount = subtotal_amount unless subtotal_amount == SKIP
      @discount_amount = discount_amount unless discount_amount == SKIP
      @tax_amount = tax_amount unless tax_amount == SKIP
      @total_amount = total_amount unless total_amount == SKIP
      @applied_amount = applied_amount unless applied_amount == SKIP
      @remaining_amount = remaining_amount unless remaining_amount == SKIP
      @line_items = line_items unless line_items == SKIP
      @discounts = discounts unless discounts == SKIP
      @taxes = taxes unless taxes == SKIP
      @applications = applications unless applications == SKIP
      @refunds = refunds unless refunds == SKIP
      @origin_invoices = origin_invoices unless origin_invoices == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      site_id = hash.key?('site_id') ? hash['site_id'] : SKIP
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      number = hash.key?('number') ? hash['number'] : SKIP
      sequence_number =
        hash.key?('sequence_number') ? hash['sequence_number'] : SKIP
      issue_date = hash.key?('issue_date') ? hash['issue_date'] : SKIP
      applied_date = hash.key?('applied_date') ? hash['applied_date'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      seller = Seller.from_hash(hash['seller']) if hash['seller']
      customer = Customer1.from_hash(hash['customer']) if hash['customer']
      billing_address = BillingAddress.from_hash(hash['billing_address']) if
        hash['billing_address']
      shipping_address = ShippingAddress.from_hash(hash['shipping_address']) if
        hash['shipping_address']
      subtotal_amount =
        hash.key?('subtotal_amount') ? hash['subtotal_amount'] : SKIP
      discount_amount =
        hash.key?('discount_amount') ? hash['discount_amount'] : SKIP
      tax_amount = hash.key?('tax_amount') ? hash['tax_amount'] : SKIP
      total_amount = hash.key?('total_amount') ? hash['total_amount'] : SKIP
      applied_amount =
        hash.key?('applied_amount') ? hash['applied_amount'] : SKIP
      remaining_amount =
        hash.key?('remaining_amount') ? hash['remaining_amount'] : SKIP
      # Parameter is an array, so we need to iterate through it
      line_items = nil
      unless hash['line_items'].nil?
        line_items = []
        hash['line_items'].each do |structure|
          line_items << (CreditNoteLineItem.from_hash(structure) if structure)
        end
      end

      line_items = SKIP unless hash.key?('line_items')
      # Parameter is an array, so we need to iterate through it
      discounts = nil
      unless hash['discounts'].nil?
        discounts = []
        hash['discounts'].each do |structure|
          discounts << (InvoiceDiscount.from_hash(structure) if structure)
        end
      end

      discounts = SKIP unless hash.key?('discounts')
      # Parameter is an array, so we need to iterate through it
      taxes = nil
      unless hash['taxes'].nil?
        taxes = []
        hash['taxes'].each do |structure|
          taxes << (InvoiceTax.from_hash(structure) if structure)
        end
      end

      taxes = SKIP unless hash.key?('taxes')
      # Parameter is an array, so we need to iterate through it
      applications = nil
      unless hash['applications'].nil?
        applications = []
        hash['applications'].each do |structure|
          applications << (CreditNoteApplication.from_hash(structure) if structure)
        end
      end

      applications = SKIP unless hash.key?('applications')
      # Parameter is an array, so we need to iterate through it
      refunds = nil
      unless hash['refunds'].nil?
        refunds = []
        hash['refunds'].each do |structure|
          refunds << (InvoiceRefund.from_hash(structure) if structure)
        end
      end

      refunds = SKIP unless hash.key?('refunds')
      # Parameter is an array, so we need to iterate through it
      origin_invoices = nil
      unless hash['origin_invoices'].nil?
        origin_invoices = []
        hash['origin_invoices'].each do |structure|
          origin_invoices << (OriginInvoice.from_hash(structure) if structure)
        end
      end

      origin_invoices = SKIP unless hash.key?('origin_invoices')

      # Create object from extracted values.
      CreditNote1.new(uid,
                      site_id,
                      customer_id,
                      subscription_id,
                      number,
                      sequence_number,
                      issue_date,
                      applied_date,
                      status,
                      currency,
                      memo,
                      seller,
                      customer,
                      billing_address,
                      shipping_address,
                      subtotal_amount,
                      discount_amount,
                      tax_amount,
                      total_amount,
                      applied_amount,
                      remaining_amount,
                      line_items,
                      discounts,
                      taxes,
                      applications,
                      refunds,
                      origin_invoices)
    end
  end
end
