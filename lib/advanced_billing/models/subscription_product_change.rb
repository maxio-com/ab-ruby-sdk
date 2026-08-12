# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # Event data for both `subscription_product_change` and
  # `subscription_product_change_scheduled`. The price point and `effective_at`
  # fields are only populated for scheduled changes.
  class SubscriptionProductChange < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :previous_product_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :new_product_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :previous_product_price_point_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :new_product_price_point_id

    # When the scheduled product change takes effect (the subscription's next
    # renewal). Only sent for `subscription_product_change_scheduled`.
    # @return [DateTime]
    attr_accessor :effective_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['previous_product_id'] = 'previous_product_id'
      @_hash['new_product_id'] = 'new_product_id'
      @_hash['previous_product_price_point_id'] =
        'previous_product_price_point_id'
      @_hash['new_product_price_point_id'] = 'new_product_price_point_id'
      @_hash['effective_at'] = 'effective_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        previous_product_price_point_id
        new_product_price_point_id
        effective_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        previous_product_price_point_id
        new_product_price_point_id
        effective_at
      ]
    end

    def initialize(previous_product_id:, new_product_id:,
                   previous_product_price_point_id: SKIP,
                   new_product_price_point_id: SKIP, effective_at: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @previous_product_id = previous_product_id
      @new_product_id = new_product_id
      unless previous_product_price_point_id == SKIP
        @previous_product_price_point_id =
          previous_product_price_point_id
      end
      unless new_product_price_point_id == SKIP
        @new_product_price_point_id =
          new_product_price_point_id
      end
      @effective_at = effective_at unless effective_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      previous_product_id =
        hash.key?('previous_product_id') ? hash['previous_product_id'] : nil
      new_product_id =
        hash.key?('new_product_id') ? hash['new_product_id'] : nil
      previous_product_price_point_id =
        hash.key?('previous_product_price_point_id') ? hash['previous_product_price_point_id'] : SKIP
      new_product_price_point_id =
        hash.key?('new_product_price_point_id') ? hash['new_product_price_point_id'] : SKIP
      effective_at = if hash.key?('effective_at')
                       (DateTimeHelper.from_rfc3339(hash['effective_at']) if hash['effective_at'])
                     else
                       SKIP
                     end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionProductChange.new(previous_product_id: previous_product_id,
                                    new_product_id: new_product_id,
                                    previous_product_price_point_id: previous_product_price_point_id,
                                    new_product_price_point_id: new_product_price_point_id,
                                    effective_at: effective_at,
                                    additional_properties: additional_properties)
    end

    def to_custom_effective_at
      DateTimeHelper.to_rfc3339(effective_at)
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
      " #{@new_product_id}, previous_product_price_point_id: #{@previous_product_price_point_id},"\
      " new_product_price_point_id: #{@new_product_price_point_id}, effective_at:"\
      " #{@effective_at}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} previous_product_id: #{@previous_product_id.inspect}, new_product_id:"\
      " #{@new_product_id.inspect}, previous_product_price_point_id:"\
      " #{@previous_product_price_point_id.inspect}, new_product_price_point_id:"\
      " #{@new_product_price_point_id.inspect}, effective_at: #{@effective_at.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
