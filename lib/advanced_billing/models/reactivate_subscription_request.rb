# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ReactivateSubscriptionRequest Model.
  class ReactivateSubscriptionRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # These values are only applicable to subscriptions using calendar billing
    # @return [ReactivationBilling]
    attr_accessor :calendar_billing

    # If `true` is sent, the reactivated Subscription will include a trial if
    # one is available. If `false` is sent, the trial period will be ignored.
    # @return [TrueClass | FalseClass]
    attr_accessor :include_trial

    # If `true` is passed, the existing subscription balance will NOT be
    # cleared/reset before adding the additional reactivation charges.
    # @return [TrueClass | FalseClass]
    attr_accessor :preserve_balance

    # The coupon code to be applied during reactivation.
    # @return [String]
    attr_accessor :coupon_code

    # If true is sent, Chargify will use service credits and prepayments upon
    # reactivation. If false is sent, the service credits and prepayments will
    # be ignored.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_credits_and_prepayments

    # If `true`, Chargify will attempt to resume the subscription's billing
    # period. if not resumable, the subscription will be reactivated with a new
    # billing period. If `false`: Chargify will only attempt to reactivate the
    # subscription.
    # @return [Object]
    attr_accessor :resume

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['calendar_billing'] = 'calendar_billing'
      @_hash['include_trial'] = 'include_trial'
      @_hash['preserve_balance'] = 'preserve_balance'
      @_hash['coupon_code'] = 'coupon_code'
      @_hash['use_credits_and_prepayments'] = 'use_credits_and_prepayments'
      @_hash['resume'] = 'resume'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        calendar_billing
        include_trial
        preserve_balance
        coupon_code
        use_credits_and_prepayments
        resume
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(calendar_billing: SKIP, include_trial: SKIP,
                   preserve_balance: SKIP, coupon_code: SKIP,
                   use_credits_and_prepayments: SKIP, resume: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @calendar_billing = calendar_billing unless calendar_billing == SKIP
      @include_trial = include_trial unless include_trial == SKIP
      @preserve_balance = preserve_balance unless preserve_balance == SKIP
      @coupon_code = coupon_code unless coupon_code == SKIP
      unless use_credits_and_prepayments == SKIP
        @use_credits_and_prepayments =
          use_credits_and_prepayments
      end
      @resume = resume unless resume == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      calendar_billing = ReactivationBilling.from_hash(hash['calendar_billing']) if
        hash['calendar_billing']
      include_trial = hash.key?('include_trial') ? hash['include_trial'] : SKIP
      preserve_balance =
        hash.key?('preserve_balance') ? hash['preserve_balance'] : SKIP
      coupon_code = hash.key?('coupon_code') ? hash['coupon_code'] : SKIP
      use_credits_and_prepayments =
        hash.key?('use_credits_and_prepayments') ? hash['use_credits_and_prepayments'] : SKIP
      resume = hash.key?('resume') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:ReactivateSubscriptionRequestResume), hash['resume']
      ) : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ReactivateSubscriptionRequest.new(calendar_billing: calendar_billing,
                                        include_trial: include_trial,
                                        preserve_balance: preserve_balance,
                                        coupon_code: coupon_code,
                                        use_credits_and_prepayments: use_credits_and_prepayments,
                                        resume: resume,
                                        additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ReactivateSubscriptionRequest | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} calendar_billing: #{@calendar_billing}, include_trial: #{@include_trial},"\
      " preserve_balance: #{@preserve_balance}, coupon_code: #{@coupon_code},"\
      " use_credits_and_prepayments: #{@use_credits_and_prepayments}, resume: #{@resume},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} calendar_billing: #{@calendar_billing.inspect}, include_trial:"\
      " #{@include_trial.inspect}, preserve_balance: #{@preserve_balance.inspect}, coupon_code:"\
      " #{@coupon_code.inspect}, use_credits_and_prepayments:"\
      " #{@use_credits_and_prepayments.inspect}, resume: #{@resume.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
