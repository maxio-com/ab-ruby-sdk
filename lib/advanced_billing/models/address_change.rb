# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # AddressChange Model.
  class AddressChange < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [InvoiceAddress]
    attr_accessor :before

    # TODO: Write general description for this method
    # @return [InvoiceAddress]
    attr_accessor :after

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['before'] = 'before'
      @_hash['after'] = 'after'
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

    def initialize(before = nil,
                   after = nil,
                   additional_properties = {})
      @before = before
      @after = after

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      before = InvoiceAddress.from_hash(hash['before']) if hash['before']
      after = InvoiceAddress.from_hash(hash['after']) if hash['after']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      AddressChange.new(before,
                        after,
                        hash)
    end

    # Validates an instance of the object from a given value.
    # @param [AddressChange | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.before,
                                ->(val) { InvoiceAddress.validate(val) }) and
            APIHelper.valid_type?(value.after,
                                  ->(val) { InvoiceAddress.validate(val) })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['before'],
                              ->(val) { InvoiceAddress.validate(val) }) and
          APIHelper.valid_type?(value['after'],
                                ->(val) { InvoiceAddress.validate(val) })
      )
    end
  end
end
