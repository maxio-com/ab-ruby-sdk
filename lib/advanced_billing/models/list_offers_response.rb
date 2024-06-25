# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListOffersResponse Model.
  class ListOffersResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[Offer]]
    attr_accessor :offers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['offers'] = 'offers'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        offers
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(offers: SKIP, additional_properties: {})
      @offers = offers unless offers == SKIP

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
      offers = nil
      unless hash['offers'].nil?
        offers = []
        hash['offers'].each do |structure|
          offers << (Offer.from_hash(structure) if structure)
        end
      end

      offers = SKIP unless hash.key?('offers')

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ListOffersResponse.new(offers: offers,
                             additional_properties: hash)
    end
  end
end
