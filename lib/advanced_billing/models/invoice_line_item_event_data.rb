# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceLineItemEventData Model.
  class InvoiceLineItemEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :quantity

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :quantity_delta

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :unit_price

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :period_range_start

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :period_range_end

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :line_references

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :pricing_details_index

    # TODO: Write general description for this method
    # @return [Array[InvoiceLineItemPricingDetail]]
    attr_accessor :pricing_details

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_amount

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_price_point_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_point_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :component_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :billing_schedule_item_id

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :custom_item

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['title'] = 'title'
      @_hash['description'] = 'description'
      @_hash['quantity'] = 'quantity'
      @_hash['quantity_delta'] = 'quantity_delta'
      @_hash['unit_price'] = 'unit_price'
      @_hash['period_range_start'] = 'period_range_start'
      @_hash['period_range_end'] = 'period_range_end'
      @_hash['amount'] = 'amount'
      @_hash['line_references'] = 'line_references'
      @_hash['pricing_details_index'] = 'pricing_details_index'
      @_hash['pricing_details'] = 'pricing_details'
      @_hash['tax_code'] = 'tax_code'
      @_hash['tax_amount'] = 'tax_amount'
      @_hash['product_id'] = 'product_id'
      @_hash['product_price_point_id'] = 'product_price_point_id'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['component_id'] = 'component_id'
      @_hash['billing_schedule_item_id'] = 'billing_schedule_item_id'
      @_hash['custom_item'] = 'custom_item'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        title
        description
        quantity
        quantity_delta
        unit_price
        period_range_start
        period_range_end
        amount
        line_references
        pricing_details_index
        pricing_details
        tax_code
        tax_amount
        product_id
        product_price_point_id
        price_point_id
        component_id
        billing_schedule_item_id
        custom_item
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        quantity_delta
        pricing_details_index
        tax_code
        product_price_point_id
        price_point_id
        component_id
        billing_schedule_item_id
        custom_item
      ]
    end

    def initialize(uid = SKIP,
                   title = SKIP,
                   description = SKIP,
                   quantity = SKIP,
                   quantity_delta = SKIP,
                   unit_price = SKIP,
                   period_range_start = SKIP,
                   period_range_end = SKIP,
                   amount = SKIP,
                   line_references = SKIP,
                   pricing_details_index = SKIP,
                   pricing_details = SKIP,
                   tax_code = SKIP,
                   tax_amount = SKIP,
                   product_id = SKIP,
                   product_price_point_id = SKIP,
                   price_point_id = SKIP,
                   component_id = SKIP,
                   billing_schedule_item_id = SKIP,
                   custom_item = SKIP,
                   additional_properties = {})
      @uid = uid unless uid == SKIP
      @title = title unless title == SKIP
      @description = description unless description == SKIP
      @quantity = quantity unless quantity == SKIP
      @quantity_delta = quantity_delta unless quantity_delta == SKIP
      @unit_price = unit_price unless unit_price == SKIP
      @period_range_start = period_range_start unless period_range_start == SKIP
      @period_range_end = period_range_end unless period_range_end == SKIP
      @amount = amount unless amount == SKIP
      @line_references = line_references unless line_references == SKIP
      @pricing_details_index = pricing_details_index unless pricing_details_index == SKIP
      @pricing_details = pricing_details unless pricing_details == SKIP
      @tax_code = tax_code unless tax_code == SKIP
      @tax_amount = tax_amount unless tax_amount == SKIP
      @product_id = product_id unless product_id == SKIP
      @product_price_point_id = product_price_point_id unless product_price_point_id == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @component_id = component_id unless component_id == SKIP
      @billing_schedule_item_id = billing_schedule_item_id unless billing_schedule_item_id == SKIP
      @custom_item = custom_item unless custom_item == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      title = hash.key?('title') ? hash['title'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP
      quantity_delta =
        hash.key?('quantity_delta') ? hash['quantity_delta'] : SKIP
      unit_price = hash.key?('unit_price') ? hash['unit_price'] : SKIP
      period_range_start =
        hash.key?('period_range_start') ? hash['period_range_start'] : SKIP
      period_range_end =
        hash.key?('period_range_end') ? hash['period_range_end'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      line_references =
        hash.key?('line_references') ? hash['line_references'] : SKIP
      pricing_details_index =
        hash.key?('pricing_details_index') ? hash['pricing_details_index'] : SKIP
      # Parameter is an array, so we need to iterate through it
      pricing_details = nil
      unless hash['pricing_details'].nil?
        pricing_details = []
        hash['pricing_details'].each do |structure|
          pricing_details << (InvoiceLineItemPricingDetail.from_hash(structure) if structure)
        end
      end

      pricing_details = SKIP unless hash.key?('pricing_details')
      tax_code = hash.key?('tax_code') ? hash['tax_code'] : SKIP
      tax_amount = hash.key?('tax_amount') ? hash['tax_amount'] : SKIP
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
      product_price_point_id =
        hash.key?('product_price_point_id') ? hash['product_price_point_id'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      billing_schedule_item_id =
        hash.key?('billing_schedule_item_id') ? hash['billing_schedule_item_id'] : SKIP
      custom_item = hash.key?('custom_item') ? hash['custom_item'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      InvoiceLineItemEventData.new(uid,
                                   title,
                                   description,
                                   quantity,
                                   quantity_delta,
                                   unit_price,
                                   period_range_start,
                                   period_range_end,
                                   amount,
                                   line_references,
                                   pricing_details_index,
                                   pricing_details,
                                   tax_code,
                                   tax_amount,
                                   product_id,
                                   product_price_point_id,
                                   price_point_id,
                                   component_id,
                                   billing_schedule_item_id,
                                   custom_item,
                                   hash)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceLineItemEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
