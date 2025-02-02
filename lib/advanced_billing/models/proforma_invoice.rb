# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # ProformaInvoice Model.
  class ProformaInvoice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :site_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :customer_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscription_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :number

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :sequence_number

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [Date]
    attr_accessor :delivery_date

    # TODO: Write general description for this method
    # @return [ProformaInvoiceStatus]
    attr_accessor :status

    # The type of payment collection to be used in the subscription. For legacy
    # Statements Architecture valid options are - `invoice`, `automatic`. For
    # current Relationship Invoicing Architecture valid options are -
    # `remittance`, `automatic`, `prepaid`.
    # @return [CollectionMethod]
    attr_accessor :collection_method

    # The type of payment collection to be used in the subscription. For legacy
    # Statements Architecture valid options are - `invoice`, `automatic`. For
    # current Relationship Invoicing Architecture valid options are -
    # `remittance`, `automatic`, `prepaid`.
    # @return [String]
    attr_accessor :payment_instructions

    # The type of payment collection to be used in the subscription. For legacy
    # Statements Architecture valid options are - `invoice`, `automatic`. For
    # current Relationship Invoicing Architecture valid options are -
    # `remittance`, `automatic`, `prepaid`.
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
    # @return [String]
    attr_accessor :product_name

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
    # @return [String]
    attr_accessor :product_family_name

    # 'proforma' value is deprecated in favor of proforma_adhoc and
    # proforma_automatic
    # @return [ProformaInvoiceRole]
    attr_accessor :role

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
    # @return [String]
    attr_accessor :memo

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [InvoiceAddress]
    attr_accessor :billing_address

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [InvoiceAddress]
    attr_accessor :shipping_address

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [String]
    attr_accessor :subtotal_amount

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [String]
    attr_accessor :discount_amount

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [String]
    attr_accessor :tax_amount

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [String]
    attr_accessor :total_amount

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [String]
    attr_accessor :credit_amount

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [String]
    attr_accessor :paid_amount

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [String]
    attr_accessor :refund_amount

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [String]
    attr_accessor :due_amount

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [Array[InvoiceLineItem]]
    attr_accessor :line_items

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [Array[ProformaInvoiceDiscount]]
    attr_accessor :discounts

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [Array[ProformaInvoiceTax]]
    attr_accessor :taxes

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [Array[ProformaInvoiceCredit]]
    attr_accessor :credits

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [Array[ProformaInvoicePayment]]
    attr_accessor :payments

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [Array[InvoiceCustomField]]
    attr_accessor :custom_fields

    # Information about the customer who is owner or recipient the invoiced
    # subscription.
    # @return [String]
    attr_accessor :public_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['site_id'] = 'site_id'
      @_hash['customer_id'] = 'customer_id'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['number'] = 'number'
      @_hash['sequence_number'] = 'sequence_number'
      @_hash['created_at'] = 'created_at'
      @_hash['delivery_date'] = 'delivery_date'
      @_hash['status'] = 'status'
      @_hash['collection_method'] = 'collection_method'
      @_hash['payment_instructions'] = 'payment_instructions'
      @_hash['currency'] = 'currency'
      @_hash['consolidation_level'] = 'consolidation_level'
      @_hash['product_name'] = 'product_name'
      @_hash['product_family_name'] = 'product_family_name'
      @_hash['role'] = 'role'
      @_hash['seller'] = 'seller'
      @_hash['customer'] = 'customer'
      @_hash['memo'] = 'memo'
      @_hash['billing_address'] = 'billing_address'
      @_hash['shipping_address'] = 'shipping_address'
      @_hash['subtotal_amount'] = 'subtotal_amount'
      @_hash['discount_amount'] = 'discount_amount'
      @_hash['tax_amount'] = 'tax_amount'
      @_hash['total_amount'] = 'total_amount'
      @_hash['credit_amount'] = 'credit_amount'
      @_hash['paid_amount'] = 'paid_amount'
      @_hash['refund_amount'] = 'refund_amount'
      @_hash['due_amount'] = 'due_amount'
      @_hash['line_items'] = 'line_items'
      @_hash['discounts'] = 'discounts'
      @_hash['taxes'] = 'taxes'
      @_hash['credits'] = 'credits'
      @_hash['payments'] = 'payments'
      @_hash['custom_fields'] = 'custom_fields'
      @_hash['public_url'] = 'public_url'
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
        created_at
        delivery_date
        status
        collection_method
        payment_instructions
        currency
        consolidation_level
        product_name
        product_family_name
        role
        seller
        customer
        memo
        billing_address
        shipping_address
        subtotal_amount
        discount_amount
        tax_amount
        total_amount
        credit_amount
        paid_amount
        refund_amount
        due_amount
        line_items
        discounts
        taxes
        credits
        payments
        custom_fields
        public_url
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        customer_id
        subscription_id
        number
        sequence_number
        public_url
      ]
    end

    def initialize(uid: SKIP, site_id: SKIP, customer_id: SKIP,
                   subscription_id: SKIP, number: SKIP, sequence_number: SKIP,
                   created_at: SKIP, delivery_date: SKIP, status: SKIP,
                   collection_method: SKIP, payment_instructions: SKIP,
                   currency: SKIP, consolidation_level: SKIP,
                   product_name: SKIP, product_family_name: SKIP, role: SKIP,
                   seller: SKIP, customer: SKIP, memo: SKIP,
                   billing_address: SKIP, shipping_address: SKIP,
                   subtotal_amount: SKIP, discount_amount: SKIP,
                   tax_amount: SKIP, total_amount: SKIP, credit_amount: SKIP,
                   paid_amount: SKIP, refund_amount: SKIP, due_amount: SKIP,
                   line_items: SKIP, discounts: SKIP, taxes: SKIP,
                   credits: SKIP, payments: SKIP, custom_fields: SKIP,
                   public_url: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @uid = uid unless uid == SKIP
      @site_id = site_id unless site_id == SKIP
      @customer_id = customer_id unless customer_id == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @number = number unless number == SKIP
      @sequence_number = sequence_number unless sequence_number == SKIP
      @created_at = created_at unless created_at == SKIP
      @delivery_date = delivery_date unless delivery_date == SKIP
      @status = status unless status == SKIP
      @collection_method = collection_method unless collection_method == SKIP
      @payment_instructions = payment_instructions unless payment_instructions == SKIP
      @currency = currency unless currency == SKIP
      @consolidation_level = consolidation_level unless consolidation_level == SKIP
      @product_name = product_name unless product_name == SKIP
      @product_family_name = product_family_name unless product_family_name == SKIP
      @role = role unless role == SKIP
      @seller = seller unless seller == SKIP
      @customer = customer unless customer == SKIP
      @memo = memo unless memo == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @shipping_address = shipping_address unless shipping_address == SKIP
      @subtotal_amount = subtotal_amount unless subtotal_amount == SKIP
      @discount_amount = discount_amount unless discount_amount == SKIP
      @tax_amount = tax_amount unless tax_amount == SKIP
      @total_amount = total_amount unless total_amount == SKIP
      @credit_amount = credit_amount unless credit_amount == SKIP
      @paid_amount = paid_amount unless paid_amount == SKIP
      @refund_amount = refund_amount unless refund_amount == SKIP
      @due_amount = due_amount unless due_amount == SKIP
      @line_items = line_items unless line_items == SKIP
      @discounts = discounts unless discounts == SKIP
      @taxes = taxes unless taxes == SKIP
      @credits = credits unless credits == SKIP
      @payments = payments unless payments == SKIP
      @custom_fields = custom_fields unless custom_fields == SKIP
      @public_url = public_url unless public_url == SKIP
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
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      delivery_date = hash.key?('delivery_date') ? hash['delivery_date'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      collection_method =
        hash.key?('collection_method') ? hash['collection_method'] : SKIP
      payment_instructions =
        hash.key?('payment_instructions') ? hash['payment_instructions'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      consolidation_level =
        hash.key?('consolidation_level') ? hash['consolidation_level'] : SKIP
      product_name = hash.key?('product_name') ? hash['product_name'] : SKIP
      product_family_name =
        hash.key?('product_family_name') ? hash['product_family_name'] : SKIP
      role = hash.key?('role') ? hash['role'] : SKIP
      seller = InvoiceSeller.from_hash(hash['seller']) if hash['seller']
      customer = InvoiceCustomer.from_hash(hash['customer']) if hash['customer']
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
      paid_amount = hash.key?('paid_amount') ? hash['paid_amount'] : SKIP
      refund_amount = hash.key?('refund_amount') ? hash['refund_amount'] : SKIP
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
          discounts << (ProformaInvoiceDiscount.from_hash(structure) if structure)
        end
      end

      discounts = SKIP unless hash.key?('discounts')
      # Parameter is an array, so we need to iterate through it
      taxes = nil
      unless hash['taxes'].nil?
        taxes = []
        hash['taxes'].each do |structure|
          taxes << (ProformaInvoiceTax.from_hash(structure) if structure)
        end
      end

      taxes = SKIP unless hash.key?('taxes')
      # Parameter is an array, so we need to iterate through it
      credits = nil
      unless hash['credits'].nil?
        credits = []
        hash['credits'].each do |structure|
          credits << (ProformaInvoiceCredit.from_hash(structure) if structure)
        end
      end

      credits = SKIP unless hash.key?('credits')
      # Parameter is an array, so we need to iterate through it
      payments = nil
      unless hash['payments'].nil?
        payments = []
        hash['payments'].each do |structure|
          payments << (ProformaInvoicePayment.from_hash(structure) if structure)
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
      public_url = hash.key?('public_url') ? hash['public_url'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ProformaInvoice.new(uid: uid,
                          site_id: site_id,
                          customer_id: customer_id,
                          subscription_id: subscription_id,
                          number: number,
                          sequence_number: sequence_number,
                          created_at: created_at,
                          delivery_date: delivery_date,
                          status: status,
                          collection_method: collection_method,
                          payment_instructions: payment_instructions,
                          currency: currency,
                          consolidation_level: consolidation_level,
                          product_name: product_name,
                          product_family_name: product_family_name,
                          role: role,
                          seller: seller,
                          customer: customer,
                          memo: memo,
                          billing_address: billing_address,
                          shipping_address: shipping_address,
                          subtotal_amount: subtotal_amount,
                          discount_amount: discount_amount,
                          tax_amount: tax_amount,
                          total_amount: total_amount,
                          credit_amount: credit_amount,
                          paid_amount: paid_amount,
                          refund_amount: refund_amount,
                          due_amount: due_amount,
                          line_items: line_items,
                          discounts: discounts,
                          taxes: taxes,
                          credits: credits,
                          payments: payments,
                          custom_fields: custom_fields,
                          public_url: public_url,
                          additional_properties: additional_properties)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} uid: #{@uid}, site_id: #{@site_id}, customer_id: #{@customer_id},"\
      " subscription_id: #{@subscription_id}, number: #{@number}, sequence_number:"\
      " #{@sequence_number}, created_at: #{@created_at}, delivery_date: #{@delivery_date}, status:"\
      " #{@status}, collection_method: #{@collection_method}, payment_instructions:"\
      " #{@payment_instructions}, currency: #{@currency}, consolidation_level:"\
      " #{@consolidation_level}, product_name: #{@product_name}, product_family_name:"\
      " #{@product_family_name}, role: #{@role}, seller: #{@seller}, customer: #{@customer}, memo:"\
      " #{@memo}, billing_address: #{@billing_address}, shipping_address: #{@shipping_address},"\
      " subtotal_amount: #{@subtotal_amount}, discount_amount: #{@discount_amount}, tax_amount:"\
      " #{@tax_amount}, total_amount: #{@total_amount}, credit_amount: #{@credit_amount},"\
      " paid_amount: #{@paid_amount}, refund_amount: #{@refund_amount}, due_amount:"\
      " #{@due_amount}, line_items: #{@line_items}, discounts: #{@discounts}, taxes: #{@taxes},"\
      " credits: #{@credits}, payments: #{@payments}, custom_fields: #{@custom_fields},"\
      " public_url: #{@public_url}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} uid: #{@uid.inspect}, site_id: #{@site_id.inspect}, customer_id:"\
      " #{@customer_id.inspect}, subscription_id: #{@subscription_id.inspect}, number:"\
      " #{@number.inspect}, sequence_number: #{@sequence_number.inspect}, created_at:"\
      " #{@created_at.inspect}, delivery_date: #{@delivery_date.inspect}, status:"\
      " #{@status.inspect}, collection_method: #{@collection_method.inspect},"\
      " payment_instructions: #{@payment_instructions.inspect}, currency: #{@currency.inspect},"\
      " consolidation_level: #{@consolidation_level.inspect}, product_name:"\
      " #{@product_name.inspect}, product_family_name: #{@product_family_name.inspect}, role:"\
      " #{@role.inspect}, seller: #{@seller.inspect}, customer: #{@customer.inspect}, memo:"\
      " #{@memo.inspect}, billing_address: #{@billing_address.inspect}, shipping_address:"\
      " #{@shipping_address.inspect}, subtotal_amount: #{@subtotal_amount.inspect},"\
      " discount_amount: #{@discount_amount.inspect}, tax_amount: #{@tax_amount.inspect},"\
      " total_amount: #{@total_amount.inspect}, credit_amount: #{@credit_amount.inspect},"\
      " paid_amount: #{@paid_amount.inspect}, refund_amount: #{@refund_amount.inspect},"\
      " due_amount: #{@due_amount.inspect}, line_items: #{@line_items.inspect}, discounts:"\
      " #{@discounts.inspect}, taxes: #{@taxes.inspect}, credits: #{@credits.inspect}, payments:"\
      " #{@payments.inspect}, custom_fields: #{@custom_fields.inspect}, public_url:"\
      " #{@public_url.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
