# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PaymentMethodExternal Model.
  class PaymentMethodExternal < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :details

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kind

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # TODO: Write general description for this method
    # @return [InvoiceEventPaymentMethod]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['details'] = 'details'
      @_hash['kind'] = 'kind'
      @_hash['memo'] = 'memo'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      %w[
        details
        memo
      ]
    end

    def initialize(details = nil,
                   kind = nil,
                   memo = nil,
                   type = nil)
      @details = details
      @kind = kind
      @memo = memo
      @type = type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      details = hash.key?('details') ? hash['details'] : nil
      kind = hash.key?('kind') ? hash['kind'] : nil
      memo = hash.key?('memo') ? hash['memo'] : nil
      type = hash.key?('type') ? hash['type'] : nil

      # Create object from extracted values.
      PaymentMethodExternal.new(details,
                                kind,
                                memo,
                                type)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentMethodExternal | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.details,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.kind,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.memo,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.type,
                                  ->(val) { InvoiceEventPaymentMethod.validate(val) })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['details'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['kind'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['memo'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['type'],
                                ->(val) { InvoiceEventPaymentMethod.validate(val) })
      )
    end
  end
end