# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceLineItemPricingDetail Model.
  class InvoiceLineItemPricingDetail < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :label

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['label'] = 'label'
      @_hash['amount'] = 'amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        label
        amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(label: SKIP, amount: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @label = label unless label == SKIP
      @amount = amount unless amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      label = hash.key?('label') ? hash['label'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoiceLineItemPricingDetail.new(label: label,
                                       amount: amount,
                                       additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceLineItemPricingDetail | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} label: #{@label}, amount: #{@amount}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} label: #{@label.inspect}, amount: #{@amount.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
