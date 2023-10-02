# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # UpdateSubscriptionComponent Model.
  class UpdateSubscriptionComponent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :component_id

    # Create or update custom pricing unique to the subscription. Used in place
    # of `price_point_id`.
    # @return [ComponentCustomPrice]
    attr_accessor :custom_price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['component_id'] = 'component_id'
      @_hash['custom_price'] = 'custom_price'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        component_id
        custom_price
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(component_id = SKIP,
                   custom_price = SKIP)
      @component_id = component_id unless component_id == SKIP
      @custom_price = custom_price unless custom_price == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      custom_price = ComponentCustomPrice.from_hash(hash['custom_price']) if hash['custom_price']

      # Create object from extracted values.
      UpdateSubscriptionComponent.new(component_id,
                                      custom_price)
    end
  end
end
