# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateInvoiceItem Model.
  class CreateInvoiceItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title

    # The quantity can contain up to 8 decimal places. i.e. 1.00 or 0.0012 or
    # 0.00000065. If you submit a value with more than 8 decimal places, we will
    # round it down to the 8th decimal place.
    # @return [Object]
    attr_accessor :quantity

    # The unit_price can contain up to 8 decimal places. i.e. 1.00 or 0.0012 or
    # 0.00000065. If you submit a value with more than 8 decimal places, we will
    # round it down to the 8th decimal place.
    # @return [Object]
    attr_accessor :unit_price

    # Set to true to automatically calculate taxes. Site must be configured to
    # use and calculate taxes.
    # If using Avalara, a tax_code parameter must also be sent.
    # @return [TrueClass | FalseClass]
    attr_accessor :taxable

    # Set to true to automatically calculate taxes. Site must be configured to
    # use and calculate taxes.
    # If using Avalara, a tax_code parameter must also be sent.
    # @return [String]
    attr_accessor :tax_code

    # YYYY-MM-DD
    # @return [String]
    attr_accessor :period_range_start

    # YYYY-MM-DD
    # @return [String]
    attr_accessor :period_range_end

    # Product handle or product id.
    # @return [Object]
    attr_accessor :product_id

    # Component handle or component id.
    # @return [Object]
    attr_accessor :component_id

    # Price point handle or id. For component.
    # @return [Object]
    attr_accessor :price_point_id

    # Price point handle or id. For component.
    # @return [Object]
    attr_accessor :product_price_point_id

    # Price point handle or id. For component.
    # @return [String]
    attr_accessor :description

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['title'] = 'title'
      @_hash['quantity'] = 'quantity'
      @_hash['unit_price'] = 'unit_price'
      @_hash['taxable'] = 'taxable'
      @_hash['tax_code'] = 'tax_code'
      @_hash['period_range_start'] = 'period_range_start'
      @_hash['period_range_end'] = 'period_range_end'
      @_hash['product_id'] = 'product_id'
      @_hash['component_id'] = 'component_id'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['product_price_point_id'] = 'product_price_point_id'
      @_hash['description'] = 'description'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        title
        quantity
        unit_price
        taxable
        tax_code
        period_range_start
        period_range_end
        product_id
        component_id
        price_point_id
        product_price_point_id
        description
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(title: SKIP, quantity: SKIP, unit_price: SKIP, taxable: SKIP,
                   tax_code: SKIP, period_range_start: SKIP,
                   period_range_end: SKIP, product_id: SKIP, component_id: SKIP,
                   price_point_id: SKIP, product_price_point_id: SKIP,
                   description: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @title = title unless title == SKIP
      @quantity = quantity unless quantity == SKIP
      @unit_price = unit_price unless unit_price == SKIP
      @taxable = taxable unless taxable == SKIP
      @tax_code = tax_code unless tax_code == SKIP
      @period_range_start = period_range_start unless period_range_start == SKIP
      @period_range_end = period_range_end unless period_range_end == SKIP
      @product_id = product_id unless product_id == SKIP
      @component_id = component_id unless component_id == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @product_price_point_id = product_price_point_id unless product_price_point_id == SKIP
      @description = description unless description == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      title = hash.key?('title') ? hash['title'] : SKIP
      quantity = hash.key?('quantity') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateInvoiceItemQuantity), hash['quantity']
      ) : SKIP
      unit_price = hash.key?('unit_price') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateInvoiceItemUnitPrice), hash['unit_price']
      ) : SKIP
      taxable = hash.key?('taxable') ? hash['taxable'] : SKIP
      tax_code = hash.key?('tax_code') ? hash['tax_code'] : SKIP
      period_range_start =
        hash.key?('period_range_start') ? hash['period_range_start'] : SKIP
      period_range_end =
        hash.key?('period_range_end') ? hash['period_range_end'] : SKIP
      product_id = hash.key?('product_id') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateInvoiceItemProductId), hash['product_id']
      ) : SKIP
      component_id = hash.key?('component_id') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateInvoiceItemComponentId), hash['component_id']
      ) : SKIP
      price_point_id = hash.key?('price_point_id') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateInvoiceItemPricePointId), hash['price_point_id']
      ) : SKIP
      product_price_point_id = hash.key?('product_price_point_id') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateInvoiceItemProductPricePointId), hash['product_price_point_id']
      ) : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateInvoiceItem.new(title: title,
                            quantity: quantity,
                            unit_price: unit_price,
                            taxable: taxable,
                            tax_code: tax_code,
                            period_range_start: period_range_start,
                            period_range_end: period_range_end,
                            product_id: product_id,
                            component_id: component_id,
                            price_point_id: price_point_id,
                            product_price_point_id: product_price_point_id,
                            description: description,
                            additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateInvoiceItem | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
