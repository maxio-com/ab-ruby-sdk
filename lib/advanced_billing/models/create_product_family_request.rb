# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateProductFamilyRequest Model.
  class CreateProductFamilyRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [CreateProductFamily]
    attr_accessor :product_family

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['product_family'] = 'product_family'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(product_family = nil)
      @product_family = product_family
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      product_family = CreateProductFamily.from_hash(hash['product_family']) if
        hash['product_family']

      # Create object from extracted values.
      CreateProductFamilyRequest.new(product_family)
    end
  end
end
