# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Coupon Model.
  class Coupon < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_family_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :product_family_name

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :start_date

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :end_date

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :percentage

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :recurring

    # TODO: Write general description for this method
    # @return [RecurringScheme]
    attr_accessor :recurring_scheme

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :duration_period_count

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :duration_interval

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :duration_interval_unit

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :duration_interval_span

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_negative_balance

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :archived_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :conversion_limit

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :stackable

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :compounding_strategy

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [DiscountType]
    attr_accessor :discount_type

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :exclude_mid_period_allocations

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :apply_on_cancel_at_end_of_period

    # TODO: Write general description for this method
    # @return [Array[CouponRestriction]]
    attr_accessor :coupon_restrictions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['code'] = 'code'
      @_hash['description'] = 'description'
      @_hash['amount'] = 'amount'
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['product_family_id'] = 'product_family_id'
      @_hash['product_family_name'] = 'product_family_name'
      @_hash['start_date'] = 'start_date'
      @_hash['end_date'] = 'end_date'
      @_hash['percentage'] = 'percentage'
      @_hash['recurring'] = 'recurring'
      @_hash['recurring_scheme'] = 'recurring_scheme'
      @_hash['duration_period_count'] = 'duration_period_count'
      @_hash['duration_interval'] = 'duration_interval'
      @_hash['duration_interval_unit'] = 'duration_interval_unit'
      @_hash['duration_interval_span'] = 'duration_interval_span'
      @_hash['allow_negative_balance'] = 'allow_negative_balance'
      @_hash['archived_at'] = 'archived_at'
      @_hash['conversion_limit'] = 'conversion_limit'
      @_hash['stackable'] = 'stackable'
      @_hash['compounding_strategy'] = 'compounding_strategy'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['discount_type'] = 'discount_type'
      @_hash['exclude_mid_period_allocations'] =
        'exclude_mid_period_allocations'
      @_hash['apply_on_cancel_at_end_of_period'] =
        'apply_on_cancel_at_end_of_period'
      @_hash['coupon_restrictions'] = 'coupon_restrictions'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        code
        description
        amount
        amount_in_cents
        product_family_id
        product_family_name
        start_date
        end_date
        percentage
        recurring
        recurring_scheme
        duration_period_count
        duration_interval
        duration_interval_unit
        duration_interval_span
        allow_negative_balance
        archived_at
        conversion_limit
        stackable
        compounding_strategy
        use_site_exchange_rate
        created_at
        updated_at
        discount_type
        exclude_mid_period_allocations
        apply_on_cancel_at_end_of_period
        coupon_restrictions
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        amount
        amount_in_cents
        product_family_name
        end_date
        percentage
        duration_period_count
        duration_interval
        duration_interval_unit
        duration_interval_span
        archived_at
        conversion_limit
      ]
    end

    def initialize(id = SKIP,
                   name = SKIP,
                   code = SKIP,
                   description = SKIP,
                   amount = SKIP,
                   amount_in_cents = SKIP,
                   product_family_id = SKIP,
                   product_family_name = SKIP,
                   start_date = SKIP,
                   end_date = SKIP,
                   percentage = SKIP,
                   recurring = SKIP,
                   recurring_scheme = SKIP,
                   duration_period_count = SKIP,
                   duration_interval = SKIP,
                   duration_interval_unit = SKIP,
                   duration_interval_span = SKIP,
                   allow_negative_balance = SKIP,
                   archived_at = SKIP,
                   conversion_limit = SKIP,
                   stackable = SKIP,
                   compounding_strategy = SKIP,
                   use_site_exchange_rate = SKIP,
                   created_at = SKIP,
                   updated_at = SKIP,
                   discount_type = SKIP,
                   exclude_mid_period_allocations = SKIP,
                   apply_on_cancel_at_end_of_period = SKIP,
                   coupon_restrictions = SKIP,
                   additional_properties = {})
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @code = code unless code == SKIP
      @description = description unless description == SKIP
      @amount = amount unless amount == SKIP
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      @product_family_id = product_family_id unless product_family_id == SKIP
      @product_family_name = product_family_name unless product_family_name == SKIP
      @start_date = start_date unless start_date == SKIP
      @end_date = end_date unless end_date == SKIP
      @percentage = percentage unless percentage == SKIP
      @recurring = recurring unless recurring == SKIP
      @recurring_scheme = recurring_scheme unless recurring_scheme == SKIP
      @duration_period_count = duration_period_count unless duration_period_count == SKIP
      @duration_interval = duration_interval unless duration_interval == SKIP
      @duration_interval_unit = duration_interval_unit unless duration_interval_unit == SKIP
      @duration_interval_span = duration_interval_span unless duration_interval_span == SKIP
      @allow_negative_balance = allow_negative_balance unless allow_negative_balance == SKIP
      @archived_at = archived_at unless archived_at == SKIP
      @conversion_limit = conversion_limit unless conversion_limit == SKIP
      @stackable = stackable unless stackable == SKIP
      @compounding_strategy = compounding_strategy unless compounding_strategy == SKIP
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @discount_type = discount_type unless discount_type == SKIP
      unless exclude_mid_period_allocations == SKIP
        @exclude_mid_period_allocations =
          exclude_mid_period_allocations
      end
      unless apply_on_cancel_at_end_of_period == SKIP
        @apply_on_cancel_at_end_of_period =
          apply_on_cancel_at_end_of_period
      end
      @coupon_restrictions = coupon_restrictions unless coupon_restrictions == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      code = hash.key?('code') ? hash['code'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      product_family_id =
        hash.key?('product_family_id') ? hash['product_family_id'] : SKIP
      product_family_name =
        hash.key?('product_family_name') ? hash['product_family_name'] : SKIP
      start_date = if hash.key?('start_date')
                     (DateTimeHelper.from_rfc3339(hash['start_date']) if hash['start_date'])
                   else
                     SKIP
                   end
      end_date = if hash.key?('end_date')
                   (DateTimeHelper.from_rfc3339(hash['end_date']) if hash['end_date'])
                 else
                   SKIP
                 end
      percentage = hash.key?('percentage') ? hash['percentage'] : SKIP
      recurring = hash.key?('recurring') ? hash['recurring'] : SKIP
      recurring_scheme =
        hash.key?('recurring_scheme') ? hash['recurring_scheme'] : SKIP
      duration_period_count =
        hash.key?('duration_period_count') ? hash['duration_period_count'] : SKIP
      duration_interval =
        hash.key?('duration_interval') ? hash['duration_interval'] : SKIP
      duration_interval_unit =
        hash.key?('duration_interval_unit') ? hash['duration_interval_unit'] : SKIP
      duration_interval_span =
        hash.key?('duration_interval_span') ? hash['duration_interval_span'] : SKIP
      allow_negative_balance =
        hash.key?('allow_negative_balance') ? hash['allow_negative_balance'] : SKIP
      archived_at = if hash.key?('archived_at')
                      (DateTimeHelper.from_rfc3339(hash['archived_at']) if hash['archived_at'])
                    else
                      SKIP
                    end
      conversion_limit =
        hash.key?('conversion_limit') ? hash['conversion_limit'] : SKIP
      stackable = hash.key?('stackable') ? hash['stackable'] : SKIP
      compounding_strategy = hash.key?('compounding_strategy') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CouponCompoundingStrategy), hash['compounding_strategy']
      ) : SKIP
      use_site_exchange_rate =
        hash.key?('use_site_exchange_rate') ? hash['use_site_exchange_rate'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   else
                     SKIP
                   end
      discount_type = hash.key?('discount_type') ? hash['discount_type'] : SKIP
      exclude_mid_period_allocations =
        hash.key?('exclude_mid_period_allocations') ? hash['exclude_mid_period_allocations'] : SKIP
      apply_on_cancel_at_end_of_period =
        hash.key?('apply_on_cancel_at_end_of_period') ? hash['apply_on_cancel_at_end_of_period'] : SKIP
      # Parameter is an array, so we need to iterate through it
      coupon_restrictions = nil
      unless hash['coupon_restrictions'].nil?
        coupon_restrictions = []
        hash['coupon_restrictions'].each do |structure|
          coupon_restrictions << (CouponRestriction.from_hash(structure) if structure)
        end
      end

      coupon_restrictions = SKIP unless hash.key?('coupon_restrictions')

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Coupon.new(id,
                 name,
                 code,
                 description,
                 amount,
                 amount_in_cents,
                 product_family_id,
                 product_family_name,
                 start_date,
                 end_date,
                 percentage,
                 recurring,
                 recurring_scheme,
                 duration_period_count,
                 duration_interval,
                 duration_interval_unit,
                 duration_interval_span,
                 allow_negative_balance,
                 archived_at,
                 conversion_limit,
                 stackable,
                 compounding_strategy,
                 use_site_exchange_rate,
                 created_at,
                 updated_at,
                 discount_type,
                 exclude_mid_period_allocations,
                 apply_on_cancel_at_end_of_period,
                 coupon_restrictions,
                 hash)
    end

    def to_custom_start_date
      DateTimeHelper.to_rfc3339(start_date)
    end

    def to_custom_end_date
      DateTimeHelper.to_rfc3339(end_date)
    end

    def to_custom_archived_at
      DateTimeHelper.to_rfc3339(archived_at)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    # Validates an instance of the object from a given value.
    # @param [Coupon | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
