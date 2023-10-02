# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # CreateOrUpdateSegmentPrice Model.
  class CreateOrUpdateSegmentPrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :starting_quantity

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :ending_quantity

    # The price can contain up to 8 decimal places. i.e. 1.00 or 0.0012 or
    # 0.00000065
    # @return [Object]
    attr_accessor :unit_price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['starting_quantity'] = 'starting_quantity'
      @_hash['ending_quantity'] = 'ending_quantity'
      @_hash['unit_price'] = 'unit_price'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        starting_quantity
        ending_quantity
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(unit_price = nil,
                   starting_quantity = SKIP,
                   ending_quantity = SKIP)
      @starting_quantity = starting_quantity unless starting_quantity == SKIP
      @ending_quantity = ending_quantity unless ending_quantity == SKIP
      @unit_price = unit_price
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      unit_price = hash.key?('unit_price') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateOrUpdateSegmentPriceUnitPrice), hash['unit_price']
      ) : nil
      starting_quantity =
        hash.key?('starting_quantity') ? hash['starting_quantity'] : SKIP
      ending_quantity =
        hash.key?('ending_quantity') ? hash['ending_quantity'] : SKIP

      # Create object from extracted values.
      CreateOrUpdateSegmentPrice.new(unit_price,
                                     starting_quantity,
                                     ending_quantity)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateOrUpdateSegmentPrice | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return UnionTypeLookUp.get(:CreateOrUpdateSegmentPriceUnitPrice)
                              .validate(value.unit_price)
      end

      return false unless value.instance_of? Hash

      UnionTypeLookUp.get(:CreateOrUpdateSegmentPriceUnitPrice)
                     .validate(value['unit_price'])
    end
  end
end
