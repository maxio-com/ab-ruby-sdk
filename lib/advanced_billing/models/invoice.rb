# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Invoice Model.
  class Invoice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # Unique identifier for the invoice. It is generated automatically by
    # Chargify and has the prefix "inv_" followed by alphanumeric characters.
    # @return [String]
    attr_accessor :uid

    # ID of the site to which the invoice belongs.
    # @return [Integer]
    attr_accessor :site_id

    # ID of the customer to which the invoice belongs.
    # @return [Integer]
    attr_accessor :customer_id

    # ID of the subscription that generated the invoice.
    # @return [Integer]
    attr_accessor :subscription_id

    # A unique, identifying string that appears on the invoice and in places the
    # invoice is referenced.
    # While the UID is long and not appropriate to show to customers, the number
    # is usually shorter and consumable by the customer and the merchant alike.
    # @return [String]
    attr_accessor :number

    # A monotonically increasing number assigned to invoices as they are
    # created.  This number is unique within a site and can be used to sort and
    # order invoices.
    # @return [Integer]
    attr_accessor :sequence_number

    # A monotonically increasing number assigned to invoices as they are
    # created.  This number is unique within a site and can be used to sort and
    # order invoices.
    # @return [DateTime]
    attr_accessor :transaction_time

    # A monotonically increasing number assigned to invoices as they are
    # created.  This number is unique within a site and can be used to sort and
    # order invoices.
    # @return [DateTime]
    attr_accessor :created_at

    # A monotonically increasing number assigned to invoices as they are
    # created.  This number is unique within a site and can be used to sort and
    # order invoices.
    # @return [DateTime]
    attr_accessor :updated_at

    # Date the invoice was issued to the customer.  This is the date that the
    # invoice was made available for payment.
    # The format is `"YYYY-MM-DD"`.
    # @return [Date]
    attr_accessor :issue_date

    # Date the invoice is due.
    # The format is `"YYYY-MM-DD"`.
    # @return [Date]
    attr_accessor :due_date

    # Date the invoice became fully paid.
    # If partial payments are applied to the invoice, this date will not be
    # present until payment has been made in full.
    # The format is `"YYYY-MM-DD"`.
    # @return [Date]
    attr_accessor :paid_date

    # The current status of the invoice. See [Invoice
    # Statuses](https://maxio.zendesk.com/hc/en-us/articles/24252287829645-Advan
    # ced-Billing-Invoices-Overview#invoice-statuses) for more.
    # @return [InvoiceStatus]
    attr_accessor :status

    # The current status of the invoice. See [Invoice
    # Statuses](https://maxio.zendesk.com/hc/en-us/articles/24252287829645-Advan
    # ced-Billing-Invoices-Overview#invoice-statuses) for more.
    # @return [InvoiceRole]
    attr_accessor :role

    # The current status of the invoice. See [Invoice
    # Statuses](https://maxio.zendesk.com/hc/en-us/articles/24252287829645-Advan
    # ced-Billing-Invoices-Overview#invoice-statuses) for more.
    # @return [Integer]
    attr_accessor :parent_invoice_id

    # The type of payment collection to be used in the subscription. For legacy
    # Statements Architecture valid options are - `invoice`, `automatic`. For
    # current Relationship Invoicing Architecture valid options are -
    # `remittance`, `automatic`, `prepaid`.
    # @return [CollectionMethod]
    attr_accessor :collection_method

    # A message that is printed on the invoice when it is marked for remittance
    # collection. It is intended to describe to the customer how they may make
    # payment, and is configured by the merchant.
    # @return [String]
    attr_accessor :payment_instructions

    # The ISO 4217 currency code (3 character string) representing the currency
    # of invoice transaction.
    # @return [String]
    attr_accessor :currency

    # Consolidation level of the invoice, which is applicable to invoice
    # consolidation.  It will hold one of the following values:
    # * "none": A normal invoice with no consolidation.
    # * "child": An invoice segment which has been combined into a consolidated
    # invoice.
    # * "parent": A consolidated invoice, whose contents are composed of invoice
    # segments.
    # "Parent" invoices do not have lines of their own, but they have subtotals
    # and totals which aggregate the member invoice segments.
    # See also the [invoice consolidation
    # documentation](https://maxio.zendesk.com/hc/en-us/articles/24252269909389-
    # Invoice-Consolidation).
    # @return [InvoiceConsolidationLevel]
    attr_accessor :consolidation_level

    # For invoices with `consolidation_level` of `child`, this specifies the UID
    # of the parent (consolidated) invoice.
    # @return [String]
    attr_accessor :parent_invoice_uid

    # For invoices with `consolidation_level` of `child`, this specifies the UID
    # of the parent (consolidated) invoice.
    # @return [Integer]
    attr_accessor :subscription_group_id

    # For invoices with `consolidation_level` of `child`, this specifies the
    # number of the parent (consolidated) invoice.
    # @return [Integer]
    attr_accessor :parent_invoice_number

    # For invoices with `consolidation_level` of `parent`, this specifies the ID
    # of the subscription which was the primary subscription of the subscription
    # group that generated the invoice.
    # @return [Integer]
    attr_accessor :group_primary_subscription_id

    # The name of the product subscribed when the invoice was generated.
    # @return [String]
    attr_accessor :product_name

    # The name of the product family subscribed when the invoice was generated.
    # @return [String]
    attr_accessor :product_family_name

    # Information about the seller (merchant) listed on the masthead of the
    # invoice.
    # @return [InvoiceSeller]
    attr_accessor :seller

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [InvoiceCustomer]
    attr_accessor :customer

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [InvoicePayer]
    attr_accessor :payer

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [Array[String]]
    attr_accessor :recipient_emails

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [Integer]
    attr_accessor :net_terms

    # The memo printed on invoices of any collection type.  This message is in
    # control of the merchant.
    # @return [String]
    attr_accessor :memo

    # The invoice billing address.
    # @return [InvoiceAddress]
    attr_accessor :billing_address

    # The invoice shipping address.
    # @return [InvoiceAddress]
    attr_accessor :shipping_address

    # Subtotal of the invoice, which is the sum of all line items before
    # discounts or taxes.
    # @return [String]
    attr_accessor :subtotal_amount

    # Total discount applied to the invoice.
    # @return [String]
    attr_accessor :discount_amount

    # Total tax on the invoice.
    # @return [String]
    attr_accessor :tax_amount

    # The invoice total, which is `subtotal_amount - discount_amount +
    # tax_amount`.'
    # @return [String]
    attr_accessor :total_amount

    # The amount of credit (from credit notes) applied to this invoice.
    # Credits offset the amount due from the customer.
    # @return [String]
    attr_accessor :credit_amount

    # The amount of credit (from credit notes) applied to this invoice.
    # Credits offset the amount due from the customer.
    # @return [String]
    attr_accessor :debit_amount

    # The amount of credit (from credit notes) applied to this invoice.
    # Credits offset the amount due from the customer.
    # @return [String]
    attr_accessor :refund_amount

    # The amount paid on the invoice by the customer.
    # @return [String]
    attr_accessor :paid_amount

    # Amount due on the invoice, which is `total_amount - credit_amount -
    # paid_amount`.
    # @return [String]
    attr_accessor :due_amount

    # Line items on the invoice.
    # @return [Array[InvoiceLineItem]]
    attr_accessor :line_items

    # Line items on the invoice.
    # @return [Array[InvoiceDiscount]]
    attr_accessor :discounts

    # Line items on the invoice.
    # @return [Array[InvoiceTax]]
    attr_accessor :taxes

    # Line items on the invoice.
    # @return [Array[InvoiceCredit]]
    attr_accessor :credits

    # Line items on the invoice.
    # @return [Array[InvoiceDebit]]
    attr_accessor :debits

    # Line items on the invoice.
    # @return [Array[InvoiceRefund]]
    attr_accessor :refunds

    # Line items on the invoice.
    # @return [Array[InvoicePayment]]
    attr_accessor :payments

    # Line items on the invoice.
    # @return [Array[InvoiceCustomField]]
    attr_accessor :custom_fields

    # Line items on the invoice.
    # @return [InvoiceDisplaySettings]
    attr_accessor :display_settings

    # Line items on the invoice.
    # @return [InvoiceAvataxDetails]
    attr_accessor :avatax_details

    # The public URL of the invoice
    # @return [String]
    attr_accessor :public_url

    # The public URL of the invoice
    # @return [InvoicePreviousBalance]
    attr_accessor :previous_balance_data

    # The format is `"YYYY-MM-DD"`.
    # @return [Date]
    attr_accessor :public_url_expires_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['uid'] = 'uid'
      @_hash['site_id'] = 'site_id'
      @_hash['customer_id'] = 'customer_id'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['number'] = 'number'
      @_hash['sequence_number'] = 'sequence_number'
      @_hash['transaction_time'] = 'transaction_time'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['issue_date'] = 'issue_date'
      @_hash['due_date'] = 'due_date'
      @_hash['paid_date'] = 'paid_date'
      @_hash['status'] = 'status'
      @_hash['role'] = 'role'
      @_hash['parent_invoice_id'] = 'parent_invoice_id'
      @_hash['collection_method'] = 'collection_method'
      @_hash['payment_instructions'] = 'payment_instructions'
      @_hash['currency'] = 'currency'
      @_hash['consolidation_level'] = 'consolidation_level'
      @_hash['parent_invoice_uid'] = 'parent_invoice_uid'
      @_hash['subscription_group_id'] = 'subscription_group_id'
      @_hash['parent_invoice_number'] = 'parent_invoice_number'
      @_hash['group_primary_subscription_id'] =
        'group_primary_subscription_id'
      @_hash['product_name'] = 'product_name'
      @_hash['product_family_name'] = 'product_family_name'
      @_hash['seller'] = 'seller'
      @_hash['customer'] = 'customer'
      @_hash['payer'] = 'payer'
      @_hash['recipient_emails'] = 'recipient_emails'
      @_hash['net_terms'] = 'net_terms'
      @_hash['memo'] = 'memo'
      @_hash['billing_address'] = 'billing_address'
      @_hash['shipping_address'] = 'shipping_address'
      @_hash['subtotal_amount'] = 'subtotal_amount'
      @_hash['discount_amount'] = 'discount_amount'
      @_hash['tax_amount'] = 'tax_amount'
      @_hash['total_amount'] = 'total_amount'
      @_hash['credit_amount'] = 'credit_amount'
      @_hash['debit_amount'] = 'debit_amount'
      @_hash['refund_amount'] = 'refund_amount'
      @_hash['paid_amount'] = 'paid_amount'
      @_hash['due_amount'] = 'due_amount'
      @_hash['line_items'] = 'line_items'
      @_hash['discounts'] = 'discounts'
      @_hash['taxes'] = 'taxes'
      @_hash['credits'] = 'credits'
      @_hash['debits'] = 'debits'
      @_hash['refunds'] = 'refunds'
      @_hash['payments'] = 'payments'
      @_hash['custom_fields'] = 'custom_fields'
      @_hash['display_settings'] = 'display_settings'
      @_hash['avatax_details'] = 'avatax_details'
      @_hash['public_url'] = 'public_url'
      @_hash['previous_balance_data'] = 'previous_balance_data'
      @_hash['public_url_expires_on'] = 'public_url_expires_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        uid
        site_id
        customer_id
        subscription_id
        number
        sequence_number
        transaction_time
        created_at
        updated_at
        issue_date
        due_date
        paid_date
        status
        role
        parent_invoice_id
        collection_method
        payment_instructions
        currency
        consolidation_level
        parent_invoice_uid
        subscription_group_id
        parent_invoice_number
        group_primary_subscription_id
        product_name
        product_family_name
        seller
        customer
        payer
        recipient_emails
        net_terms
        memo
        billing_address
        shipping_address
        subtotal_amount
        discount_amount
        tax_amount
        total_amount
        credit_amount
        debit_amount
        refund_amount
        paid_amount
        due_amount
        line_items
        discounts
        taxes
        credits
        debits
        refunds
        payments
        custom_fields
        display_settings
        avatax_details
        public_url
        previous_balance_data
        public_url_expires_on
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        paid_date
        parent_invoice_id
        parent_invoice_uid
        subscription_group_id
        parent_invoice_number
        group_primary_subscription_id
      ]
    end

    def initialize(id: SKIP, uid: SKIP, site_id: SKIP, customer_id: SKIP,
                   subscription_id: SKIP, number: SKIP, sequence_number: SKIP,
                   transaction_time: SKIP, created_at: SKIP, updated_at: SKIP,
                   issue_date: SKIP, due_date: SKIP, paid_date: SKIP,
                   status: SKIP, role: SKIP, parent_invoice_id: SKIP,
                   collection_method: SKIP, payment_instructions: SKIP,
                   currency: SKIP, consolidation_level: SKIP,
                   parent_invoice_uid: SKIP, subscription_group_id: SKIP,
                   parent_invoice_number: SKIP,
                   group_primary_subscription_id: SKIP, product_name: SKIP,
                   product_family_name: SKIP, seller: SKIP, customer: SKIP,
                   payer: SKIP, recipient_emails: SKIP, net_terms: SKIP,
                   memo: SKIP, billing_address: SKIP, shipping_address: SKIP,
                   subtotal_amount: SKIP, discount_amount: SKIP,
                   tax_amount: SKIP, total_amount: SKIP, credit_amount: SKIP,
                   debit_amount: SKIP, refund_amount: SKIP, paid_amount: SKIP,
                   due_amount: SKIP, line_items: SKIP, discounts: SKIP,
                   taxes: SKIP, credits: SKIP, debits: SKIP, refunds: SKIP,
                   payments: SKIP, custom_fields: SKIP, display_settings: SKIP,
                   avatax_details: SKIP, public_url: SKIP,
                   previous_balance_data: SKIP, public_url_expires_on: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @uid = uid unless uid == SKIP
      @site_id = site_id unless site_id == SKIP
      @customer_id = customer_id unless customer_id == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @number = number unless number == SKIP
      @sequence_number = sequence_number unless sequence_number == SKIP
      @transaction_time = transaction_time unless transaction_time == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @issue_date = issue_date unless issue_date == SKIP
      @due_date = due_date unless due_date == SKIP
      @paid_date = paid_date unless paid_date == SKIP
      @status = status unless status == SKIP
      @role = role unless role == SKIP
      @parent_invoice_id = parent_invoice_id unless parent_invoice_id == SKIP
      @collection_method = collection_method unless collection_method == SKIP
      @payment_instructions = payment_instructions unless payment_instructions == SKIP
      @currency = currency unless currency == SKIP
      @consolidation_level = consolidation_level unless consolidation_level == SKIP
      @parent_invoice_uid = parent_invoice_uid unless parent_invoice_uid == SKIP
      @subscription_group_id = subscription_group_id unless subscription_group_id == SKIP
      @parent_invoice_number = parent_invoice_number unless parent_invoice_number == SKIP
      unless group_primary_subscription_id == SKIP
        @group_primary_subscription_id =
          group_primary_subscription_id
      end
      @product_name = product_name unless product_name == SKIP
      @product_family_name = product_family_name unless product_family_name == SKIP
      @seller = seller unless seller == SKIP
      @customer = customer unless customer == SKIP
      @payer = payer unless payer == SKIP
      @recipient_emails = recipient_emails unless recipient_emails == SKIP
      @net_terms = net_terms unless net_terms == SKIP
      @memo = memo unless memo == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @shipping_address = shipping_address unless shipping_address == SKIP
      @subtotal_amount = subtotal_amount unless subtotal_amount == SKIP
      @discount_amount = discount_amount unless discount_amount == SKIP
      @tax_amount = tax_amount unless tax_amount == SKIP
      @total_amount = total_amount unless total_amount == SKIP
      @credit_amount = credit_amount unless credit_amount == SKIP
      @debit_amount = debit_amount unless debit_amount == SKIP
      @refund_amount = refund_amount unless refund_amount == SKIP
      @paid_amount = paid_amount unless paid_amount == SKIP
      @due_amount = due_amount unless due_amount == SKIP
      @line_items = line_items unless line_items == SKIP
      @discounts = discounts unless discounts == SKIP
      @taxes = taxes unless taxes == SKIP
      @credits = credits unless credits == SKIP
      @debits = debits unless debits == SKIP
      @refunds = refunds unless refunds == SKIP
      @payments = payments unless payments == SKIP
      @custom_fields = custom_fields unless custom_fields == SKIP
      @display_settings = display_settings unless display_settings == SKIP
      @avatax_details = avatax_details unless avatax_details == SKIP
      @public_url = public_url unless public_url == SKIP
      @previous_balance_data = previous_balance_data unless previous_balance_data == SKIP
      @public_url_expires_on = public_url_expires_on unless public_url_expires_on == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      site_id = hash.key?('site_id') ? hash['site_id'] : SKIP
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      number = hash.key?('number') ? hash['number'] : SKIP
      sequence_number =
        hash.key?('sequence_number') ? hash['sequence_number'] : SKIP
      transaction_time = if hash.key?('transaction_time')
                           (DateTimeHelper.from_rfc3339(hash['transaction_time']) if hash['transaction_time'])
                         else
                           SKIP
                         end
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   else
                     SKIP
                   end
      issue_date = hash.key?('issue_date') ? hash['issue_date'] : SKIP
      due_date = hash.key?('due_date') ? hash['due_date'] : SKIP
      paid_date = hash.key?('paid_date') ? hash['paid_date'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      role = hash.key?('role') ? hash['role'] : SKIP
      parent_invoice_id =
        hash.key?('parent_invoice_id') ? hash['parent_invoice_id'] : SKIP
      collection_method =
        hash.key?('collection_method') ? hash['collection_method'] : SKIP
      payment_instructions =
        hash.key?('payment_instructions') ? hash['payment_instructions'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      consolidation_level =
        hash.key?('consolidation_level') ? hash['consolidation_level'] : SKIP
      parent_invoice_uid =
        hash.key?('parent_invoice_uid') ? hash['parent_invoice_uid'] : SKIP
      subscription_group_id =
        hash.key?('subscription_group_id') ? hash['subscription_group_id'] : SKIP
      parent_invoice_number =
        hash.key?('parent_invoice_number') ? hash['parent_invoice_number'] : SKIP
      group_primary_subscription_id =
        hash.key?('group_primary_subscription_id') ? hash['group_primary_subscription_id'] : SKIP
      product_name = hash.key?('product_name') ? hash['product_name'] : SKIP
      product_family_name =
        hash.key?('product_family_name') ? hash['product_family_name'] : SKIP
      seller = InvoiceSeller.from_hash(hash['seller']) if hash['seller']
      customer = InvoiceCustomer.from_hash(hash['customer']) if hash['customer']
      payer = InvoicePayer.from_hash(hash['payer']) if hash['payer']
      recipient_emails =
        hash.key?('recipient_emails') ? hash['recipient_emails'] : SKIP
      net_terms = hash.key?('net_terms') ? hash['net_terms'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      billing_address = InvoiceAddress.from_hash(hash['billing_address']) if
        hash['billing_address']
      shipping_address = InvoiceAddress.from_hash(hash['shipping_address']) if
        hash['shipping_address']
      subtotal_amount =
        hash.key?('subtotal_amount') ? hash['subtotal_amount'] : SKIP
      discount_amount =
        hash.key?('discount_amount') ? hash['discount_amount'] : SKIP
      tax_amount = hash.key?('tax_amount') ? hash['tax_amount'] : SKIP
      total_amount = hash.key?('total_amount') ? hash['total_amount'] : SKIP
      credit_amount = hash.key?('credit_amount') ? hash['credit_amount'] : SKIP
      debit_amount = hash.key?('debit_amount') ? hash['debit_amount'] : SKIP
      refund_amount = hash.key?('refund_amount') ? hash['refund_amount'] : SKIP
      paid_amount = hash.key?('paid_amount') ? hash['paid_amount'] : SKIP
      due_amount = hash.key?('due_amount') ? hash['due_amount'] : SKIP
      # Parameter is an array, so we need to iterate through it
      line_items = nil
      unless hash['line_items'].nil?
        line_items = []
        hash['line_items'].each do |structure|
          line_items << (InvoiceLineItem.from_hash(structure) if structure)
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
      credits = nil
      unless hash['credits'].nil?
        credits = []
        hash['credits'].each do |structure|
          credits << (InvoiceCredit.from_hash(structure) if structure)
        end
      end

      credits = SKIP unless hash.key?('credits')
      # Parameter is an array, so we need to iterate through it
      debits = nil
      unless hash['debits'].nil?
        debits = []
        hash['debits'].each do |structure|
          debits << (InvoiceDebit.from_hash(structure) if structure)
        end
      end

      debits = SKIP unless hash.key?('debits')
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
      payments = nil
      unless hash['payments'].nil?
        payments = []
        hash['payments'].each do |structure|
          payments << (InvoicePayment.from_hash(structure) if structure)
        end
      end

      payments = SKIP unless hash.key?('payments')
      # Parameter is an array, so we need to iterate through it
      custom_fields = nil
      unless hash['custom_fields'].nil?
        custom_fields = []
        hash['custom_fields'].each do |structure|
          custom_fields << (InvoiceCustomField.from_hash(structure) if structure)
        end
      end

      custom_fields = SKIP unless hash.key?('custom_fields')
      display_settings = InvoiceDisplaySettings.from_hash(hash['display_settings']) if
        hash['display_settings']
      avatax_details = InvoiceAvataxDetails.from_hash(hash['avatax_details']) if
        hash['avatax_details']
      public_url = hash.key?('public_url') ? hash['public_url'] : SKIP
      previous_balance_data = InvoicePreviousBalance.from_hash(hash['previous_balance_data']) if
        hash['previous_balance_data']
      public_url_expires_on =
        hash.key?('public_url_expires_on') ? hash['public_url_expires_on'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Invoice.new(id: id,
                  uid: uid,
                  site_id: site_id,
                  customer_id: customer_id,
                  subscription_id: subscription_id,
                  number: number,
                  sequence_number: sequence_number,
                  transaction_time: transaction_time,
                  created_at: created_at,
                  updated_at: updated_at,
                  issue_date: issue_date,
                  due_date: due_date,
                  paid_date: paid_date,
                  status: status,
                  role: role,
                  parent_invoice_id: parent_invoice_id,
                  collection_method: collection_method,
                  payment_instructions: payment_instructions,
                  currency: currency,
                  consolidation_level: consolidation_level,
                  parent_invoice_uid: parent_invoice_uid,
                  subscription_group_id: subscription_group_id,
                  parent_invoice_number: parent_invoice_number,
                  group_primary_subscription_id: group_primary_subscription_id,
                  product_name: product_name,
                  product_family_name: product_family_name,
                  seller: seller,
                  customer: customer,
                  payer: payer,
                  recipient_emails: recipient_emails,
                  net_terms: net_terms,
                  memo: memo,
                  billing_address: billing_address,
                  shipping_address: shipping_address,
                  subtotal_amount: subtotal_amount,
                  discount_amount: discount_amount,
                  tax_amount: tax_amount,
                  total_amount: total_amount,
                  credit_amount: credit_amount,
                  debit_amount: debit_amount,
                  refund_amount: refund_amount,
                  paid_amount: paid_amount,
                  due_amount: due_amount,
                  line_items: line_items,
                  discounts: discounts,
                  taxes: taxes,
                  credits: credits,
                  debits: debits,
                  refunds: refunds,
                  payments: payments,
                  custom_fields: custom_fields,
                  display_settings: display_settings,
                  avatax_details: avatax_details,
                  public_url: public_url,
                  previous_balance_data: previous_balance_data,
                  public_url_expires_on: public_url_expires_on,
                  additional_properties: additional_properties)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    # Validates an instance of the object from a given value.
    # @param [Invoice | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, uid: #{@uid}, site_id: #{@site_id}, customer_id:"\
      " #{@customer_id}, subscription_id: #{@subscription_id}, number: #{@number},"\
      " sequence_number: #{@sequence_number}, transaction_time: #{@transaction_time}, created_at:"\
      " #{@created_at}, updated_at: #{@updated_at}, issue_date: #{@issue_date}, due_date:"\
      " #{@due_date}, paid_date: #{@paid_date}, status: #{@status}, role: #{@role},"\
      " parent_invoice_id: #{@parent_invoice_id}, collection_method: #{@collection_method},"\
      " payment_instructions: #{@payment_instructions}, currency: #{@currency},"\
      " consolidation_level: #{@consolidation_level}, parent_invoice_uid: #{@parent_invoice_uid},"\
      " subscription_group_id: #{@subscription_group_id}, parent_invoice_number:"\
      " #{@parent_invoice_number}, group_primary_subscription_id:"\
      " #{@group_primary_subscription_id}, product_name: #{@product_name}, product_family_name:"\
      " #{@product_family_name}, seller: #{@seller}, customer: #{@customer}, payer: #{@payer},"\
      " recipient_emails: #{@recipient_emails}, net_terms: #{@net_terms}, memo: #{@memo},"\
      " billing_address: #{@billing_address}, shipping_address: #{@shipping_address},"\
      " subtotal_amount: #{@subtotal_amount}, discount_amount: #{@discount_amount}, tax_amount:"\
      " #{@tax_amount}, total_amount: #{@total_amount}, credit_amount: #{@credit_amount},"\
      " debit_amount: #{@debit_amount}, refund_amount: #{@refund_amount}, paid_amount:"\
      " #{@paid_amount}, due_amount: #{@due_amount}, line_items: #{@line_items}, discounts:"\
      " #{@discounts}, taxes: #{@taxes}, credits: #{@credits}, debits: #{@debits}, refunds:"\
      " #{@refunds}, payments: #{@payments}, custom_fields: #{@custom_fields}, display_settings:"\
      " #{@display_settings}, avatax_details: #{@avatax_details}, public_url: #{@public_url},"\
      " previous_balance_data: #{@previous_balance_data}, public_url_expires_on:"\
      " #{@public_url_expires_on}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, uid: #{@uid.inspect}, site_id: #{@site_id.inspect},"\
      " customer_id: #{@customer_id.inspect}, subscription_id: #{@subscription_id.inspect},"\
      " number: #{@number.inspect}, sequence_number: #{@sequence_number.inspect},"\
      " transaction_time: #{@transaction_time.inspect}, created_at: #{@created_at.inspect},"\
      " updated_at: #{@updated_at.inspect}, issue_date: #{@issue_date.inspect}, due_date:"\
      " #{@due_date.inspect}, paid_date: #{@paid_date.inspect}, status: #{@status.inspect}, role:"\
      " #{@role.inspect}, parent_invoice_id: #{@parent_invoice_id.inspect}, collection_method:"\
      " #{@collection_method.inspect}, payment_instructions: #{@payment_instructions.inspect},"\
      " currency: #{@currency.inspect}, consolidation_level: #{@consolidation_level.inspect},"\
      " parent_invoice_uid: #{@parent_invoice_uid.inspect}, subscription_group_id:"\
      " #{@subscription_group_id.inspect}, parent_invoice_number:"\
      " #{@parent_invoice_number.inspect}, group_primary_subscription_id:"\
      " #{@group_primary_subscription_id.inspect}, product_name: #{@product_name.inspect},"\
      " product_family_name: #{@product_family_name.inspect}, seller: #{@seller.inspect},"\
      " customer: #{@customer.inspect}, payer: #{@payer.inspect}, recipient_emails:"\
      " #{@recipient_emails.inspect}, net_terms: #{@net_terms.inspect}, memo: #{@memo.inspect},"\
      " billing_address: #{@billing_address.inspect}, shipping_address:"\
      " #{@shipping_address.inspect}, subtotal_amount: #{@subtotal_amount.inspect},"\
      " discount_amount: #{@discount_amount.inspect}, tax_amount: #{@tax_amount.inspect},"\
      " total_amount: #{@total_amount.inspect}, credit_amount: #{@credit_amount.inspect},"\
      " debit_amount: #{@debit_amount.inspect}, refund_amount: #{@refund_amount.inspect},"\
      " paid_amount: #{@paid_amount.inspect}, due_amount: #{@due_amount.inspect}, line_items:"\
      " #{@line_items.inspect}, discounts: #{@discounts.inspect}, taxes: #{@taxes.inspect},"\
      " credits: #{@credits.inspect}, debits: #{@debits.inspect}, refunds: #{@refunds.inspect},"\
      " payments: #{@payments.inspect}, custom_fields: #{@custom_fields.inspect},"\
      " display_settings: #{@display_settings.inspect}, avatax_details:"\
      " #{@avatax_details.inspect}, public_url: #{@public_url.inspect}, previous_balance_data:"\
      " #{@previous_balance_data.inspect}, public_url_expires_on:"\
      " #{@public_url_expires_on.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
