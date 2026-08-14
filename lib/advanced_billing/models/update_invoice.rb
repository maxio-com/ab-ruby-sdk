# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Attributes of a draft ad hoc invoice which can be updated. Only the
  # submitted attributes are changed.
  class UpdateInvoice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Line item changes to apply. Line items without a `uid` are added, line
    # items with a `uid` are updated, and line items with a `uid` and `_destroy`
    # set to `true` are removed. Existing line items not referenced in the array
    # remain unchanged.
    # @return [Array[UpdateInvoiceItem]]
    attr_accessor :line_items

    # New issue date for the invoice (format YYYY-MM-DD). This date is
    # interpreted and validated in your site's time zone. It must be today or a
    # date in the past — future dates are not accepted. The due date is
    # recalculated from the issue date and net terms.
    # @return [Date]
    attr_accessor :issue_date

    # Number of days after the issue date on which the invoice is due. The due
    # date is recalculated when net terms or the issue date change.
    # @return [Integer]
    attr_accessor :net_terms

    # Custom payment instructions displayed on the invoice.
    # @return [String]
    attr_accessor :payment_instructions

    # A custom memo displayed on the invoice.
    # @return [String]
    attr_accessor :memo

    # Replaces the seller address on the invoice
    # @return [CreateInvoiceAddress]
    attr_accessor :seller_address

    # Replaces the billing address on the invoice
    # @return [CreateInvoiceAddress]
    attr_accessor :billing_address

    # Replaces the shipping address on the invoice
    # @return [CreateInvoiceAddress]
    attr_accessor :shipping_address

    # When present, replaces all discounts currently applied to the invoice.
    # Send an empty array to remove all discounts.
    # @return [Array[CreateInvoiceCoupon]]
    attr_accessor :coupons

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['line_items'] = 'line_items'
      @_hash['issue_date'] = 'issue_date'
      @_hash['net_terms'] = 'net_terms'
      @_hash['payment_instructions'] = 'payment_instructions'
      @_hash['memo'] = 'memo'
      @_hash['seller_address'] = 'seller_address'
      @_hash['billing_address'] = 'billing_address'
      @_hash['shipping_address'] = 'shipping_address'
      @_hash['coupons'] = 'coupons'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        line_items
        issue_date
        net_terms
        payment_instructions
        memo
        seller_address
        billing_address
        shipping_address
        coupons
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(line_items: SKIP, issue_date: SKIP, net_terms: SKIP,
                   payment_instructions: SKIP, memo: SKIP, seller_address: SKIP,
                   billing_address: SKIP, shipping_address: SKIP, coupons: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @line_items = line_items unless line_items == SKIP
      @issue_date = issue_date unless issue_date == SKIP
      @net_terms = net_terms unless net_terms == SKIP
      @payment_instructions = payment_instructions unless payment_instructions == SKIP
      @memo = memo unless memo == SKIP
      @seller_address = seller_address unless seller_address == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @shipping_address = shipping_address unless shipping_address == SKIP
      @coupons = coupons unless coupons == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      line_items = nil
      unless hash['line_items'].nil?
        line_items = []
        hash['line_items'].each do |structure|
          line_items << (UpdateInvoiceItem.from_hash(structure) if structure)
        end
      end

      line_items = SKIP unless hash.key?('line_items')
      issue_date = hash.key?('issue_date') ? hash['issue_date'] : SKIP
      net_terms = hash.key?('net_terms') ? hash['net_terms'] : SKIP
      payment_instructions =
        hash.key?('payment_instructions') ? hash['payment_instructions'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      seller_address = CreateInvoiceAddress.from_hash(hash['seller_address']) if
        hash['seller_address']
      billing_address = CreateInvoiceAddress.from_hash(hash['billing_address']) if
        hash['billing_address']
      shipping_address = CreateInvoiceAddress.from_hash(hash['shipping_address']) if
        hash['shipping_address']
      # Parameter is an array, so we need to iterate through it
      coupons = nil
      unless hash['coupons'].nil?
        coupons = []
        hash['coupons'].each do |structure|
          coupons << (CreateInvoiceCoupon.from_hash(structure) if structure)
        end
      end

      coupons = SKIP unless hash.key?('coupons')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdateInvoice.new(line_items: line_items,
                        issue_date: issue_date,
                        net_terms: net_terms,
                        payment_instructions: payment_instructions,
                        memo: memo,
                        seller_address: seller_address,
                        billing_address: billing_address,
                        shipping_address: shipping_address,
                        coupons: coupons,
                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} line_items: #{@line_items}, issue_date: #{@issue_date}, net_terms:"\
      " #{@net_terms}, payment_instructions: #{@payment_instructions}, memo: #{@memo},"\
      " seller_address: #{@seller_address}, billing_address: #{@billing_address},"\
      " shipping_address: #{@shipping_address}, coupons: #{@coupons}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} line_items: #{@line_items.inspect}, issue_date: #{@issue_date.inspect},"\
      " net_terms: #{@net_terms.inspect}, payment_instructions: #{@payment_instructions.inspect},"\
      " memo: #{@memo.inspect}, seller_address: #{@seller_address.inspect}, billing_address:"\
      " #{@billing_address.inspect}, shipping_address: #{@shipping_address.inspect}, coupons:"\
      " #{@coupons.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
