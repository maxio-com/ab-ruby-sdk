# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # TokenizedPaymentProfile Model.
  class TokenizedPaymentProfile < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :vault_token

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :gateway_handle

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :customer_vault_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['vault_token'] = 'vault_token'
      @_hash['gateway_handle'] = 'gateway_handle'
      @_hash['customer_vault_token'] = 'customer_vault_token'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        vault_token
        gateway_handle
        customer_vault_token
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        gateway_handle
        customer_vault_token
      ]
    end

    def initialize(id:, vault_token: SKIP, gateway_handle: SKIP,
                   customer_vault_token: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id
      @vault_token = vault_token unless vault_token == SKIP
      @gateway_handle = gateway_handle unless gateway_handle == SKIP
      @customer_vault_token = customer_vault_token unless customer_vault_token == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      vault_token = hash.key?('vault_token') ? hash['vault_token'] : SKIP
      gateway_handle =
        hash.key?('gateway_handle') ? hash['gateway_handle'] : SKIP
      customer_vault_token =
        hash.key?('customer_vault_token') ? hash['customer_vault_token'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      TokenizedPaymentProfile.new(id: id,
                                  vault_token: vault_token,
                                  gateway_handle: gateway_handle,
                                  customer_vault_token: customer_vault_token,
                                  additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenizedPaymentProfile | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.id,
                                     ->(val) { val.instance_of? Integer })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['id'],
                            ->(val) { val.instance_of? Integer })
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, vault_token: #{@vault_token}, gateway_handle:"\
      " #{@gateway_handle}, customer_vault_token: #{@customer_vault_token}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, vault_token: #{@vault_token.inspect}, gateway_handle:"\
      " #{@gateway_handle.inspect}, customer_vault_token: #{@customer_vault_token.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
