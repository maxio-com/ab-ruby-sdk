# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # CreateOrUpdateFlatAmountCoupon Model.
  class CreateOrUpdateFlatAmountCoupon < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # the name of the coupon
    # @return [String]
    attr_accessor :name

    # may contain uppercase alphanumeric characters and these special characters
    # (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and
    # “.”
    # @return [String]
    attr_accessor :code

    # may contain uppercase alphanumeric characters and these special characters
    # (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and
    # “.”
    # @return [String]
    attr_accessor :description

    # may contain uppercase alphanumeric characters and these special characters
    # (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and
    # “.”
    # @return [Integer]
    attr_accessor :amount_in_cents

    # may contain uppercase alphanumeric characters and these special characters
    # (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and
    # “.”
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_negative_balance

    # may contain uppercase alphanumeric characters and these special characters
    # (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and
    # “.”
    # @return [TrueClass | FalseClass]
    attr_accessor :recurring

    # may contain uppercase alphanumeric characters and these special characters
    # (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and
    # “.”
    # @return [DateTime]
    attr_accessor :end_date

    # may contain uppercase alphanumeric characters and these special characters
    # (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and
    # “.”
    # @return [String]
    attr_accessor :product_family_id

    # may contain uppercase alphanumeric characters and these special characters
    # (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and
    # “.”
    # @return [TrueClass | FalseClass]
    attr_accessor :stackable

    # may contain uppercase alphanumeric characters and these special characters
    # (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and
    # “.”
    # @return [CompoundingStrategy]
    attr_accessor :compounding_strategy

    # may contain uppercase alphanumeric characters and these special characters
    # (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and
    # “.”
    # @return [TrueClass | FalseClass]
    attr_accessor :exclude_mid_period_allocations

    # may contain uppercase alphanumeric characters and these special characters
    # (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and
    # “.”
    # @return [TrueClass | FalseClass]
    attr_accessor :apply_on_cancel_at_end_of_period

    # may contain uppercase alphanumeric characters and these special characters
    # (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and
    # “.”
    # @return [TrueClass | FalseClass]
    attr_accessor :apply_on_subscription_expiration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['code'] = 'code'
      @_hash['description'] = 'description'
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['allow_negative_balance'] = 'allow_negative_balance'
      @_hash['recurring'] = 'recurring'
      @_hash['end_date'] = 'end_date'
      @_hash['product_family_id'] = 'product_family_id'
      @_hash['stackable'] = 'stackable'
      @_hash['compounding_strategy'] = 'compounding_strategy'
      @_hash['exclude_mid_period_allocations'] =
        'exclude_mid_period_allocations'
      @_hash['apply_on_cancel_at_end_of_period'] =
        'apply_on_cancel_at_end_of_period'
      @_hash['apply_on_subscription_expiration'] =
        'apply_on_subscription_expiration'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        description
        allow_negative_balance
        recurring
        end_date
        product_family_id
        stackable
        compounding_strategy
        exclude_mid_period_allocations
        apply_on_cancel_at_end_of_period
        apply_on_subscription_expiration
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = nil,
                   code = nil,
                   amount_in_cents = nil,
                   description = SKIP,
                   allow_negative_balance = SKIP,
                   recurring = SKIP,
                   end_date = SKIP,
                   product_family_id = SKIP,
                   stackable = SKIP,
                   compounding_strategy = SKIP,
                   exclude_mid_period_allocations = SKIP,
                   apply_on_cancel_at_end_of_period = SKIP,
                   apply_on_subscription_expiration = SKIP,
                   additional_properties = {})
      @name = name
      @code = code
      @description = description unless description == SKIP
      @amount_in_cents = amount_in_cents
      @allow_negative_balance = allow_negative_balance unless allow_negative_balance == SKIP
      @recurring = recurring unless recurring == SKIP
      @end_date = end_date unless end_date == SKIP
      @product_family_id = product_family_id unless product_family_id == SKIP
      @stackable = stackable unless stackable == SKIP
      @compounding_strategy = compounding_strategy unless compounding_strategy == SKIP
      unless exclude_mid_period_allocations == SKIP
        @exclude_mid_period_allocations =
          exclude_mid_period_allocations
      end
      unless apply_on_cancel_at_end_of_period == SKIP
        @apply_on_cancel_at_end_of_period =
          apply_on_cancel_at_end_of_period
      end
      unless apply_on_subscription_expiration == SKIP
        @apply_on_subscription_expiration =
          apply_on_subscription_expiration
      end

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      code = hash.key?('code') ? hash['code'] : nil
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : nil
      description = hash.key?('description') ? hash['description'] : SKIP
      allow_negative_balance =
        hash.key?('allow_negative_balance') ? hash['allow_negative_balance'] : SKIP
      recurring = hash.key?('recurring') ? hash['recurring'] : SKIP
      end_date = if hash.key?('end_date')
                   (DateTimeHelper.from_rfc3339(hash['end_date']) if hash['end_date'])
                 else
                   SKIP
                 end
      product_family_id =
        hash.key?('product_family_id') ? hash['product_family_id'] : SKIP
      stackable = hash.key?('stackable') ? hash['stackable'] : SKIP
      compounding_strategy =
        hash.key?('compounding_strategy') ? hash['compounding_strategy'] : SKIP
      exclude_mid_period_allocations =
        hash.key?('exclude_mid_period_allocations') ? hash['exclude_mid_period_allocations'] : SKIP
      apply_on_cancel_at_end_of_period =
        hash.key?('apply_on_cancel_at_end_of_period') ? hash['apply_on_cancel_at_end_of_period'] : SKIP
      apply_on_subscription_expiration =
        hash.key?('apply_on_subscription_expiration') ? hash['apply_on_subscription_expiration'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      CreateOrUpdateFlatAmountCoupon.new(name,
                                         code,
                                         amount_in_cents,
                                         description,
                                         allow_negative_balance,
                                         recurring,
                                         end_date,
                                         product_family_id,
                                         stackable,
                                         compounding_strategy,
                                         exclude_mid_period_allocations,
                                         apply_on_cancel_at_end_of_period,
                                         apply_on_subscription_expiration,
                                         hash)
    end

    def to_custom_end_date
      DateTimeHelper.to_rfc3339(end_date)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateOrUpdateFlatAmountCoupon | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.name,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.code,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.amount_in_cents,
                                  ->(val) { val.instance_of? Integer })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['name'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['code'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['amount_in_cents'],
                                ->(val) { val.instance_of? Integer })
      )
    end
  end
end
