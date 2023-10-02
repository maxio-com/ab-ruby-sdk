# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # Segment Model.
  class Segment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :component_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_point_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :event_based_billing_metric_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :pricing_scheme

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :segment_property_1_value

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :segment_property_2_value

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :segment_property_3_value

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :segment_property_4_value

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [Array[SegmentPrice]]
    attr_accessor :prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['component_id'] = 'component_id'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['event_based_billing_metric_id'] =
        'event_based_billing_metric_id'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['segment_property_1_value'] = 'segment_property_1_value'
      @_hash['segment_property_2_value'] = 'segment_property_2_value'
      @_hash['segment_property_3_value'] = 'segment_property_3_value'
      @_hash['segment_property_4_value'] = 'segment_property_4_value'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['prices'] = 'prices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        component_id
        price_point_id
        event_based_billing_metric_id
        pricing_scheme
        segment_property_1_value
        segment_property_2_value
        segment_property_3_value
        segment_property_4_value
        created_at
        updated_at
        prices
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP,
                   component_id = SKIP,
                   price_point_id = SKIP,
                   event_based_billing_metric_id = SKIP,
                   pricing_scheme = SKIP,
                   segment_property_1_value = SKIP,
                   segment_property_2_value = SKIP,
                   segment_property_3_value = SKIP,
                   segment_property_4_value = SKIP,
                   created_at = SKIP,
                   updated_at = SKIP,
                   prices = SKIP)
      @id = id unless id == SKIP
      @component_id = component_id unless component_id == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      unless event_based_billing_metric_id == SKIP
        @event_based_billing_metric_id =
          event_based_billing_metric_id
      end
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @segment_property_1_value = segment_property_1_value unless segment_property_1_value == SKIP
      @segment_property_2_value = segment_property_2_value unless segment_property_2_value == SKIP
      @segment_property_3_value = segment_property_3_value unless segment_property_3_value == SKIP
      @segment_property_4_value = segment_property_4_value unless segment_property_4_value == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @prices = prices unless prices == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      event_based_billing_metric_id =
        hash.key?('event_based_billing_metric_id') ? hash['event_based_billing_metric_id'] : SKIP
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : SKIP
      segment_property_1_value = hash.key?('segment_property_1_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SegmentSegmentProperty1Value), hash['segment_property_1_value']
      ) : SKIP
      segment_property_2_value = hash.key?('segment_property_2_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SegmentSegmentProperty2Value), hash['segment_property_2_value']
      ) : SKIP
      segment_property_3_value = hash.key?('segment_property_3_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SegmentSegmentProperty3Value), hash['segment_property_3_value']
      ) : SKIP
      segment_property_4_value = hash.key?('segment_property_4_value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SegmentSegmentProperty4Value), hash['segment_property_4_value']
      ) : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP
      updated_at = hash.key?('updated_at') ? hash['updated_at'] : SKIP
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (SegmentPrice.from_hash(structure) if structure)
        end
      end

      prices = SKIP unless hash.key?('prices')

      # Create object from extracted values.
      Segment.new(id,
                  component_id,
                  price_point_id,
                  event_based_billing_metric_id,
                  pricing_scheme,
                  segment_property_1_value,
                  segment_property_2_value,
                  segment_property_3_value,
                  segment_property_4_value,
                  created_at,
                  updated_at,
                  prices)
    end

    # Validates an instance of the object from a given value.
    # @param [Segment | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
