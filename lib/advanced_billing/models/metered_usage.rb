# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # MeteredUsage Model.
  class MeteredUsage < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :previous_unit_balance

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :new_unit_balance

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :usage_quantity

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :component_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :component_handle

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['previous_unit_balance'] = 'previous_unit_balance'
      @_hash['new_unit_balance'] = 'new_unit_balance'
      @_hash['usage_quantity'] = 'usage_quantity'
      @_hash['component_id'] = 'component_id'
      @_hash['component_handle'] = 'component_handle'
      @_hash['memo'] = 'memo'
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

    def initialize(previous_unit_balance = nil,
                   new_unit_balance = nil,
                   usage_quantity = nil,
                   component_id = nil,
                   component_handle = nil,
                   memo = nil)
      @previous_unit_balance = previous_unit_balance
      @new_unit_balance = new_unit_balance
      @usage_quantity = usage_quantity
      @component_id = component_id
      @component_handle = component_handle
      @memo = memo
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      previous_unit_balance =
        hash.key?('previous_unit_balance') ? hash['previous_unit_balance'] : nil
      new_unit_balance =
        hash.key?('new_unit_balance') ? hash['new_unit_balance'] : nil
      usage_quantity =
        hash.key?('usage_quantity') ? hash['usage_quantity'] : nil
      component_id = hash.key?('component_id') ? hash['component_id'] : nil
      component_handle =
        hash.key?('component_handle') ? hash['component_handle'] : nil
      memo = hash.key?('memo') ? hash['memo'] : nil

      # Create object from extracted values.
      MeteredUsage.new(previous_unit_balance,
                       new_unit_balance,
                       usage_quantity,
                       component_id,
                       component_handle,
                       memo)
    end

    # Validates an instance of the object from a given value.
    # @param [MeteredUsage | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.previous_unit_balance,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.new_unit_balance,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.usage_quantity,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.component_id,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.component_handle,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.memo,
                                  ->(val) { val.instance_of? String })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['previous_unit_balance'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['new_unit_balance'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['usage_quantity'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['component_id'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['component_handle'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['memo'],
                                ->(val) { val.instance_of? String })
      )
    end
  end
end
