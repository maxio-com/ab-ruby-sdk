# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # OfferResponse Model.
  class OfferResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Offer]
    attr_accessor :offer

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['offer'] = 'offer'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        offer
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(offer: SKIP, additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @offer = offer unless offer == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      offer = Offer.from_hash(hash['offer']) if hash['offer']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      OfferResponse.new(offer: offer,
                        additional_properties: additional_properties)
    end
  end
end
