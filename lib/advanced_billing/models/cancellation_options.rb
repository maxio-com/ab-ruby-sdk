# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # CancellationOptions Model.
  class CancellationOptions < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # An indication as to why the subscription is being canceled. For your
    # internal use.
    # @return [String]
    attr_accessor :cancellation_message

    # The reason code associated with the cancellation. Use the [List Reason
    # Codes]($e/Reason%20Codes/listReasonCodes) endpoint to retrieve the reason
    # codes associated with your site.
    # @return [String]
    attr_accessor :reason_code

    # When true, the subscription is cancelled at the current period end instead
    # of immediately. To use this option, the Schedule Subscription Cancellation
    # feature must be enabled on your site.
    # @return [TrueClass | FalseClass]
    attr_accessor :cancel_at_end_of_period

    # Schedules the cancellation on the provided date. This option is not
    # applicable for prepaid subscriptions. To use this option, the Schedule
    # Subscription Cancellation feature must be enabled on your site.
    # @return [DateTime]
    attr_accessor :scheduled_cancellation_at

    # Applies to prepaid subscriptions. When true, which is the default, the
    # remaining prepaid balance is refunded as part of cancellation processing.
    # When false, prepaid balance is not refunded as part of cancellation
    # processing. To use this option, the Schedule Subscription Cancellation
    # feature must be enabled on your site.
    # @return [TrueClass | FalseClass]
    attr_accessor :refund_prepayment_account_balance

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['cancellation_message'] = 'cancellation_message'
      @_hash['reason_code'] = 'reason_code'
      @_hash['cancel_at_end_of_period'] = 'cancel_at_end_of_period'
      @_hash['scheduled_cancellation_at'] = 'scheduled_cancellation_at'
      @_hash['refund_prepayment_account_balance'] =
        'refund_prepayment_account_balance'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        cancellation_message
        reason_code
        cancel_at_end_of_period
        scheduled_cancellation_at
        refund_prepayment_account_balance
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        scheduled_cancellation_at
      ]
    end

    def initialize(cancellation_message: SKIP, reason_code: SKIP,
                   cancel_at_end_of_period: SKIP,
                   scheduled_cancellation_at: SKIP,
                   refund_prepayment_account_balance: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @cancellation_message = cancellation_message unless cancellation_message == SKIP
      @reason_code = reason_code unless reason_code == SKIP
      @cancel_at_end_of_period = cancel_at_end_of_period unless cancel_at_end_of_period == SKIP
      unless scheduled_cancellation_at == SKIP
        @scheduled_cancellation_at =
          scheduled_cancellation_at
      end
      unless refund_prepayment_account_balance == SKIP
        @refund_prepayment_account_balance =
          refund_prepayment_account_balance
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      cancellation_message =
        hash.key?('cancellation_message') ? hash['cancellation_message'] : SKIP
      reason_code = hash.key?('reason_code') ? hash['reason_code'] : SKIP
      cancel_at_end_of_period =
        hash.key?('cancel_at_end_of_period') ? hash['cancel_at_end_of_period'] : SKIP
      scheduled_cancellation_at = if hash.key?('scheduled_cancellation_at')
                                    (DateTimeHelper.from_rfc3339(hash['scheduled_cancellation_at']) if hash['scheduled_cancellation_at'])
                                  else
                                    SKIP
                                  end
      refund_prepayment_account_balance =
        hash.key?('refund_prepayment_account_balance') ? hash['refund_prepayment_account_balance'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CancellationOptions.new(cancellation_message: cancellation_message,
                              reason_code: reason_code,
                              cancel_at_end_of_period: cancel_at_end_of_period,
                              scheduled_cancellation_at: scheduled_cancellation_at,
                              refund_prepayment_account_balance: refund_prepayment_account_balance,
                              additional_properties: additional_properties)
    end

    def to_custom_scheduled_cancellation_at
      DateTimeHelper.to_rfc3339(scheduled_cancellation_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} cancellation_message: #{@cancellation_message}, reason_code:"\
      " #{@reason_code}, cancel_at_end_of_period: #{@cancel_at_end_of_period},"\
      " scheduled_cancellation_at: #{@scheduled_cancellation_at},"\
      " refund_prepayment_account_balance: #{@refund_prepayment_account_balance},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} cancellation_message: #{@cancellation_message.inspect}, reason_code:"\
      " #{@reason_code.inspect}, cancel_at_end_of_period: #{@cancel_at_end_of_period.inspect},"\
      " scheduled_cancellation_at: #{@scheduled_cancellation_at.inspect},"\
      " refund_prepayment_account_balance: #{@refund_prepayment_account_balance.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
