# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # SubscriptionProductChange Model.
  class SubscriptionProductChange < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :previous_product_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :new_product_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['previous_product_id'] = 'previous_product_id'
      @_hash['new_product_id'] = 'new_product_id'
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

    def initialize(previous_product_id:, new_product_id:,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @previous_product_id = previous_product_id
      @new_product_id = new_product_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      previous_product_id =
        hash.key?('previous_product_id') ? hash['previous_product_id'] : nil
      new_product_id =
        hash.key?('new_product_id') ? hash['new_product_id'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionProductChange.new(previous_product_id: previous_product_id,
                                    new_product_id: new_product_id,
                                    additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionProductChange | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.previous_product_id,
                                ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.new_product_id,
                                  ->(val) { val.instance_of? Integer })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['previous_product_id'],
                              ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['new_product_id'],
                                ->(val) { val.instance_of? Integer })
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} previous_product_id: #{@previous_product_id}, new_product_id:"\
      " #{@new_product_id}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} previous_product_id: #{@previous_product_id.inspect}, new_product_id:"\
      " #{@new_product_id.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
