# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # UpdateCustomerRequest Model.
  class UpdateCustomerRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [UpdateCustomer]
    attr_accessor :customer

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer'] = 'customer'
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

    def initialize(customer = nil)
      @customer = customer
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer = UpdateCustomer.from_hash(hash['customer']) if hash['customer']

      # Create object from extracted values.
      UpdateCustomerRequest.new(customer)
    end
  end
end
