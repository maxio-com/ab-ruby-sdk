# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # CouponPayload Model.
  class CouponPayload < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Required when creating a new coupon. This name is not displayed to
    # customers and is limited to 255 characters.
    # @return [String]
    attr_accessor :name

    # Required when creating a new coupon. The code is limited to 255
    # characters. May contain uppercase alphanumeric characters and these
    # special characters (which allow for email addresses to be used): “%”, “@”,
    # “+”, “-”, “_”, and “.”
    # @return [String]
    attr_accessor :code

    # Required when creating a new coupon. A description of the coupon that can
    # be displayed to customers in transactions and on statements. The
    # description is limited to 255 characters.
    # @return [String]
    attr_accessor :description

    # Required when creating a new percentage coupon. Can't be used together
    # with amount_in_cents. Percentage discount
    # @return [Object]
    attr_accessor :percentage

    # Required when creating a new flat amount coupon. Can't be used together
    # with percentage. Flat USD discount
    # @return [Integer]
    attr_accessor :amount_in_cents

    # If set to true, discount is not limited (credits will carry forward to
    # next billing). Can't be used together with restrictions.
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_negative_balance

    # If set to true, discount is not limited (credits will carry forward to
    # next billing). Can't be used together with restrictions.
    # @return [TrueClass | FalseClass]
    attr_accessor :recurring

    # After the end of the given day, this coupon code will be invalid for new
    # signups. Recurring discounts started before this date will continue to
    # recur even after this date.
    # @return [Date]
    attr_accessor :end_date

    # After the end of the given day, this coupon code will be invalid for new
    # signups. Recurring discounts started before this date will continue to
    # recur even after this date.
    # @return [String]
    attr_accessor :product_family_id

    # A stackable coupon can be combined with other coupons on a Subscription.
    # @return [TrueClass | FalseClass]
    attr_accessor :stackable

    # Applicable only to stackable coupons. For `compound`, Percentage-based
    # discounts will be calculated against the remaining price, after prior
    # discounts have been calculated. For `full-price`, Percentage-based
    # discounts will always be calculated against the original item price,
    # before other discounts are applied.
    # @return [CompoundingStrategy]
    attr_accessor :compounding_strategy

    # Applicable only to stackable coupons. For `compound`, Percentage-based
    # discounts will be calculated against the remaining price, after prior
    # discounts have been calculated. For `full-price`, Percentage-based
    # discounts will always be calculated against the original item price,
    # before other discounts are applied.
    # @return [TrueClass | FalseClass]
    attr_accessor :exclude_mid_period_allocations

    # Applicable only to stackable coupons. For `compound`, Percentage-based
    # discounts will be calculated against the remaining price, after prior
    # discounts have been calculated. For `full-price`, Percentage-based
    # discounts will always be calculated against the original item price,
    # before other discounts are applied.
    # @return [TrueClass | FalseClass]
    attr_accessor :apply_on_cancel_at_end_of_period

    # Applicable only to stackable coupons. For `compound`, Percentage-based
    # discounts will be calculated against the remaining price, after prior
    # discounts have been calculated. For `full-price`, Percentage-based
    # discounts will always be calculated against the original item price,
    # before other discounts are applied.
    # @return [TrueClass | FalseClass]
    attr_accessor :apply_on_subscription_expiration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['code'] = 'code'
      @_hash['description'] = 'description'
      @_hash['percentage'] = 'percentage'
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
        name
        code
        description
        percentage
        amount_in_cents
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

    def initialize(name: SKIP, code: SKIP, description: SKIP, percentage: SKIP,
                   amount_in_cents: SKIP, allow_negative_balance: SKIP,
                   recurring: SKIP, end_date: SKIP, product_family_id: SKIP,
                   stackable: SKIP, compounding_strategy: SKIP,
                   exclude_mid_period_allocations: SKIP,
                   apply_on_cancel_at_end_of_period: SKIP,
                   apply_on_subscription_expiration: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @name = name unless name == SKIP
      @code = code unless code == SKIP
      @description = description unless description == SKIP
      @percentage = percentage unless percentage == SKIP
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
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
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      code = hash.key?('code') ? hash['code'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      percentage = hash.key?('percentage') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CouponPayloadPercentage), hash['percentage']
      ) : SKIP
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      allow_negative_balance =
        hash.key?('allow_negative_balance') ? hash['allow_negative_balance'] : SKIP
      recurring = hash.key?('recurring') ? hash['recurring'] : SKIP
      end_date = hash.key?('end_date') ? hash['end_date'] : SKIP
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
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CouponPayload.new(name: name,
                        code: code,
                        description: description,
                        percentage: percentage,
                        amount_in_cents: amount_in_cents,
                        allow_negative_balance: allow_negative_balance,
                        recurring: recurring,
                        end_date: end_date,
                        product_family_id: product_family_id,
                        stackable: stackable,
                        compounding_strategy: compounding_strategy,
                        exclude_mid_period_allocations: exclude_mid_period_allocations,
                        apply_on_cancel_at_end_of_period: apply_on_cancel_at_end_of_period,
                        apply_on_subscription_expiration: apply_on_subscription_expiration,
                        additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CouponPayload | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, code: #{@code}, description: #{@description}, percentage:"\
      " #{@percentage}, amount_in_cents: #{@amount_in_cents}, allow_negative_balance:"\
      " #{@allow_negative_balance}, recurring: #{@recurring}, end_date: #{@end_date},"\
      " product_family_id: #{@product_family_id}, stackable: #{@stackable}, compounding_strategy:"\
      " #{@compounding_strategy}, exclude_mid_period_allocations:"\
      " #{@exclude_mid_period_allocations}, apply_on_cancel_at_end_of_period:"\
      " #{@apply_on_cancel_at_end_of_period}, apply_on_subscription_expiration:"\
      " #{@apply_on_subscription_expiration}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, code: #{@code.inspect}, description:"\
      " #{@description.inspect}, percentage: #{@percentage.inspect}, amount_in_cents:"\
      " #{@amount_in_cents.inspect}, allow_negative_balance: #{@allow_negative_balance.inspect},"\
      " recurring: #{@recurring.inspect}, end_date: #{@end_date.inspect}, product_family_id:"\
      " #{@product_family_id.inspect}, stackable: #{@stackable.inspect}, compounding_strategy:"\
      " #{@compounding_strategy.inspect}, exclude_mid_period_allocations:"\
      " #{@exclude_mid_period_allocations.inspect}, apply_on_cancel_at_end_of_period:"\
      " #{@apply_on_cancel_at_end_of_period.inspect}, apply_on_subscription_expiration:"\
      " #{@apply_on_subscription_expiration.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
