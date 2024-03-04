# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateInvoice Model.
  class CreateInvoice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[CreateInvoiceItem]]
    attr_accessor :line_items

    # TODO: Write general description for this method
    # @return [Date]
    attr_accessor :issue_date

    # By default, invoices will be created with a due date matching the date of
    # invoice creation. If a different due date is desired, the net_terms
    # parameter can be sent indicating the number of days in advance the due
    # date should be.
    # @return [Integer]
    attr_accessor :net_terms

    # By default, invoices will be created with a due date matching the date of
    # invoice creation. If a different due date is desired, the net_terms
    # parameter can be sent indicating the number of days in advance the due
    # date should be.
    # @return [String]
    attr_accessor :payment_instructions

    # A custom memo can be sent to override the site's default.
    # @return [String]
    attr_accessor :memo

    # Overrides the defaults for the site
    # @return [CreateInvoiceAddress]
    attr_accessor :seller_address

    # Overrides the default for the customer
    # @return [CreateInvoiceAddress]
    attr_accessor :billing_address

    # Overrides the default for the customer
    # @return [CreateInvoiceAddress]
    attr_accessor :shipping_address

    # Overrides the default for the customer
    # @return [Array[CreateInvoiceCoupon]]
    attr_accessor :coupons

    # Overrides the default for the customer
    # @return [CreateInvoiceStatus]
    attr_accessor :status

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
      @_hash['status'] = 'status'
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
        status
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(line_items = SKIP,
                   issue_date = SKIP,
                   net_terms = SKIP,
                   payment_instructions = SKIP,
                   memo = SKIP,
                   seller_address = SKIP,
                   billing_address = SKIP,
                   shipping_address = SKIP,
                   coupons = SKIP,
                   status = CreateInvoiceStatus::OPEN,
                   additional_properties = {})
      @line_items = line_items unless line_items == SKIP
      @issue_date = issue_date unless issue_date == SKIP
      @net_terms = net_terms unless net_terms == SKIP
      @payment_instructions = payment_instructions unless payment_instructions == SKIP
      @memo = memo unless memo == SKIP
      @seller_address = seller_address unless seller_address == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @shipping_address = shipping_address unless shipping_address == SKIP
      @coupons = coupons unless coupons == SKIP
      @status = status unless status == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
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
          line_items << (CreateInvoiceItem.from_hash(structure) if structure)
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
      status = hash['status'] ||= CreateInvoiceStatus::OPEN

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      CreateInvoice.new(line_items,
                        issue_date,
                        net_terms,
                        payment_instructions,
                        memo,
                        seller_address,
                        billing_address,
                        shipping_address,
                        coupons,
                        status,
                        hash)
    end
  end
end
