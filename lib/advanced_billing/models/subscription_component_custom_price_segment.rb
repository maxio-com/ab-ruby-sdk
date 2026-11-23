# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Custom rates for one segment of an event-based component, set on the
  # subscription through `custom_price.segments`. Identify the segment by the
  # property values that occur in your events, in the same positions as the
  # segmenting properties defined on the component's meter. Each segment in a
  # request must have a unique combination of property values. Property values
  # are matched against your events as text. Send values for boolean segmenting
  # properties as the strings `"true"` and `"false"`: JSON booleans are not
  # supported here, and a segment whose only property value is `false` is
  # rejected with a 422.
  class SubscriptionComponentCustomPriceSegment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A value that will occur in your events that you want to bill upon. For a
    # boolean segmenting property, send the value as a string, `"true"` or
    # `"false"`.
    # @return [Object]
    attr_accessor :segment_property_1_value

    # A value that will occur in your events that you want to bill upon. For a
    # boolean segmenting property, send the value as a string, `"true"` or
    # `"false"`.
    # @return [Object]
    attr_accessor :segment_property_2_value

    # A value that will occur in your events that you want to bill upon. For a
    # boolean segmenting property, send the value as a string, `"true"` or
    # `"false"`.
    # @return [Object]
    attr_accessor :segment_property_3_value

    # A value that will occur in your events that you want to bill upon. For a
    # boolean segmenting property, send the value as a string, `"true"` or
    # `"false"`.
    # @return [Object]
    attr_accessor :segment_property_4_value

    # A value that will occur in your events that you want to bill upon. For a
    # boolean segmenting property, send the value as a string, `"true"` or
    # `"false"`.
    # @return [Object]
    attr_accessor :segment_property_5_value

    # A value that will occur in your events that you want to bill upon. For a
    # boolean segmenting property, send the value as a string, `"true"` or
    # `"false"`.
    # @return [Object]
    attr_accessor :segment_property_6_value

    # A value that will occur in your events that you want to bill upon. For a
    # boolean segmenting property, send the value as a string, `"true"` or
    # `"false"`.
    # @return [Object]
    attr_accessor :segment_property_7_value

    # A value that will occur in your events that you want to bill upon. For a
    # boolean segmenting property, send the value as a string, `"true"` or
    # `"false"`.
    # @return [Object]
    attr_accessor :segment_property_8_value

    # A value that will occur in your events that you want to bill upon. For a
    # boolean segmenting property, send the value as a string, `"true"` or
    # `"false"`.
    # @return [Object]
    attr_accessor :segment_property_9_value

    # A value that will occur in your events that you want to bill upon. For a
    # boolean segmenting property, send the value as a string, `"true"` or
    # `"false"`.
    # @return [Object]
    attr_accessor :segment_property_10_value

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # The rates for this segment. Use one price for a flat rate, or several
    # price brackets for a tiered, volume or stairstep scheme.
    # @return [Array[CreateOrUpdateSegmentPrice]]
    attr_accessor :prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['segment_property_1_value'] = 'segment_property_1_value'
      @_hash['segment_property_2_value'] = 'segment_property_2_value'
      @_hash['segment_property_3_value'] = 'segment_property_3_value'
      @_hash['segment_property_4_value'] = 'segment_property_4_value'
      @_hash['segment_property_5_value'] = 'segment_property_5_value'
      @_hash['segment_property_6_value'] = 'segment_property_6_value'
      @_hash['segment_property_7_value'] = 'segment_property_7_value'
      @_hash['segment_property_8_value'] = 'segment_property_8_value'
      @_hash['segment_property_9_value'] = 'segment_property_9_value'
      @_hash['segment_property_10_value'] = 'segment_property_10_value'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['prices'] = 'prices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        segment_property_1_value
        segment_property_2_value
        segment_property_3_value
        segment_property_4_value
        segment_property_5_value
        segment_property_6_value
        segment_property_7_value
        segment_property_8_value
        segment_property_9_value
        segment_property_10_value
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pricing_scheme:, prices:, segment_property_1_value: SKIP,
                   segment_property_2_value: SKIP,
                   segment_property_3_value: SKIP,
                   segment_property_4_value: SKIP,
                   segment_property_5_value: SKIP,
                   segment_property_6_value: SKIP,
                   segment_property_7_value: SKIP,
                   segment_property_8_value: SKIP,
                   segment_property_9_value: SKIP,
                   segment_property_10_value: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @segment_property_1_value = segment_property_1_value unless segment_property_1_value == SKIP
      @segment_property_2_value = segment_property_2_value unless segment_property_2_value == SKIP
      @segment_property_3_value = segment_property_3_value unless segment_property_3_value == SKIP
      @segment_property_4_value = segment_property_4_value unless segment_property_4_value == SKIP
      @segment_property_5_value = segment_property_5_value unless segment_property_5_value == SKIP
      @segment_property_6_value = segment_property_6_value unless segment_property_6_value == SKIP
      @segment_property_7_value = segment_property_7_value unless segment_property_7_value == SKIP
      @segment_property_8_value = segment_property_8_value unless segment_property_8_value == SKIP
      @segment_property_9_value = segment_property_9_value unless segment_property_9_value == SKIP
      unless segment_property_10_value == SKIP
        @segment_property_10_value =
          segment_property_10_value
      end
      @pricing_scheme = pricing_scheme
      @prices = prices
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : nil
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (CreateOrUpdateSegmentPrice.from_hash(structure) if structure)
        end
      end

      prices = nil unless hash.key?('prices')
      segment_property_1_value = hash.key?('segment_property_1_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionComponentCustomPriceSegmentSegmentProperty1Value), hash['segment_property_1_value']
      ) : SKIP
      segment_property_2_value = hash.key?('segment_property_2_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionComponentCustomPriceSegmentSegmentProperty2Value), hash['segment_property_2_value']
      ) : SKIP
      segment_property_3_value = hash.key?('segment_property_3_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionComponentCustomPriceSegmentSegmentProperty3Value), hash['segment_property_3_value']
      ) : SKIP
      segment_property_4_value = hash.key?('segment_property_4_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionComponentCustomPriceSegmentSegmentProperty4Value), hash['segment_property_4_value']
      ) : SKIP
      segment_property_5_value = hash.key?('segment_property_5_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionComponentCustomPriceSegmentSegmentProperty5Value), hash['segment_property_5_value']
      ) : SKIP
      segment_property_6_value = hash.key?('segment_property_6_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionComponentCustomPriceSegmentSegmentProperty6Value), hash['segment_property_6_value']
      ) : SKIP
      segment_property_7_value = hash.key?('segment_property_7_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionComponentCustomPriceSegmentSegmentProperty7Value), hash['segment_property_7_value']
      ) : SKIP
      segment_property_8_value = hash.key?('segment_property_8_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionComponentCustomPriceSegmentSegmentProperty8Value), hash['segment_property_8_value']
      ) : SKIP
      segment_property_9_value = hash.key?('segment_property_9_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionComponentCustomPriceSegmentSegmentProperty9Value), hash['segment_property_9_value']
      ) : SKIP
      segment_property_10_value = hash.key?('segment_property_10_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionComponentCustomPriceSegmentSegmentProperty10Value), hash['segment_property_10_value']
      ) : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionComponentCustomPriceSegment.new(pricing_scheme: pricing_scheme,
                                                  prices: prices,
                                                  segment_property_1_value: segment_property_1_value,
                                                  segment_property_2_value: segment_property_2_value,
                                                  segment_property_3_value: segment_property_3_value,
                                                  segment_property_4_value: segment_property_4_value,
                                                  segment_property_5_value: segment_property_5_value,
                                                  segment_property_6_value: segment_property_6_value,
                                                  segment_property_7_value: segment_property_7_value,
                                                  segment_property_8_value: segment_property_8_value,
                                                  segment_property_9_value: segment_property_9_value,
                                                  segment_property_10_value: segment_property_10_value,
                                                  additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionComponentCustomPriceSegment | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.pricing_scheme,
                                ->(val) { PricingScheme.validate(val) }) and
            APIHelper.valid_type?(value.prices,
                                  ->(val) { CreateOrUpdateSegmentPrice.validate(val) },
                                  is_model_hash: true,
                                  is_inner_model_hash: true)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['pricing_scheme'],
                              ->(val) { PricingScheme.validate(val) }) and
          APIHelper.valid_type?(value['prices'],
                                ->(val) { CreateOrUpdateSegmentPrice.validate(val) },
                                is_model_hash: true,
                                is_inner_model_hash: true)
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} segment_property_1_value: #{@segment_property_1_value},"\
      " segment_property_2_value: #{@segment_property_2_value}, segment_property_3_value:"\
      " #{@segment_property_3_value}, segment_property_4_value: #{@segment_property_4_value},"\
      " segment_property_5_value: #{@segment_property_5_value}, segment_property_6_value:"\
      " #{@segment_property_6_value}, segment_property_7_value: #{@segment_property_7_value},"\
      " segment_property_8_value: #{@segment_property_8_value}, segment_property_9_value:"\
      " #{@segment_property_9_value}, segment_property_10_value: #{@segment_property_10_value},"\
      " pricing_scheme: #{@pricing_scheme}, prices: #{@prices}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} segment_property_1_value: #{@segment_property_1_value.inspect},"\
      " segment_property_2_value: #{@segment_property_2_value.inspect}, segment_property_3_value:"\
      " #{@segment_property_3_value.inspect}, segment_property_4_value:"\
      " #{@segment_property_4_value.inspect}, segment_property_5_value:"\
      " #{@segment_property_5_value.inspect}, segment_property_6_value:"\
      " #{@segment_property_6_value.inspect}, segment_property_7_value:"\
      " #{@segment_property_7_value.inspect}, segment_property_8_value:"\
      " #{@segment_property_8_value.inspect}, segment_property_9_value:"\
      " #{@segment_property_9_value.inspect}, segment_property_10_value:"\
      " #{@segment_property_10_value.inspect}, pricing_scheme: #{@pricing_scheme.inspect}, prices:"\
      " #{@prices.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
