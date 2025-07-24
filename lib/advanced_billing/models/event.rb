# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # Event Model.
  class Event < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [EventKey]
    attr_accessor :key

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscription_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :customer_id

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # The schema varies based on the event key. The key-to-event data mapping is
    # as follows:
    # * `subscription_product_change` - SubscriptionProductChange
    # * `subscription_state_change` - SubscriptionStateChange
    # * `signup_success`, `delayed_signup_creation_success`, `payment_success`,
    # `payment_failure`, `renewal_success`, `renewal_failure`,
    # `chargeback_lost`, `chargeback_accepted`, `chargeback_closed` -
    # PaymentRelatedEvents
    # * `refund_success` - RefundSuccess
    # * `component_allocation_change` - ComponentAllocationChange
    # * `metered_usage` - MeteredUsage
    # * `prepaid_usage` - PrepaidUsage
    # * `dunning_step_reached` - DunningStepReached
    # * `invoice_issued` - InvoiceIssued
    # * `pending_cancellation_change` - PendingCancellationChange
    # * `prepaid_subscription_balance_changed` -
    # PrepaidSubscriptionBalanceChanged
    # * `subscription_group_signup_success` and
    # `subscription_group_signup_failure` - SubscriptionGroupSignupEventData
    # * `proforma_invoice_issued` - ProformaInvoiceIssued
    # * `subscription_prepayment_account_balance_changed` -
    # PrepaymentAccountBalanceChanged
    # * `payment_collection_method_changed` - PaymentCollectionMethodChanged
    # * `subscription_service_credit_account_balance_changed` -
    # CreditAccountBalanceChanged
    # * `item_price_point_changed` - ItemPricePointChanged
    # * `custom_field_value_change` - CustomFieldValueChange
    # * The rest, that is `delayed_signup_creation_failure`,
    # `billing_date_change`, `expiration_date_change`, `expiring_card`, 
    # `customer_update`, `customer_create`, `customer_delete`,
    # `upgrade_downgrade_success`, `upgrade_downgrade_failure`, 
    # `statement_closed`, `statement_settled`, `subscription_card_update`,
    # `subscription_group_card_update`, 
    # `subscription_bank_account_update`, `refund_failure`,
    # `upcoming_renewal_notice`, `trial_end_notice`, 
    # `direct_debit_payment_paid_out`, `direct_debit_payment_rejected`,
    # `direct_debit_payment_pending`, `pending_payment_created`, 
    # `pending_payment_failed`, `pending_payment_completed`,  don't have
    # event_specific_data defined,
    # `renewal_success_recreated`, `renewal_failure_recreated`,
    # `payment_success_recreated`, `payment_failure_recreated`,
    # `subscription_deletion`, `subscription_group_bank_account_update`,
    # `subscription_paypal_account_update`,
    # `subscription_group_paypal_account_update`,
    # `subscription_customer_change`, `account_transaction_changed`,
    # `go_cardless_payment_paid_out`, `go_cardless_payment_rejected`,
    # `go_cardless_payment_pending`, `stripe_direct_debit_payment_paid_out`,
    # `stripe_direct_debit_payment_rejected`,
    # `stripe_direct_debit_payment_pending`,
    # `maxio_payments_direct_debit_payment_paid_out`,
    # `maxio_payments_direct_debit_payment_rejected`,
    # `maxio_payments_direct_debit_payment_pending`,
    # `invoice_in_collections_canceled`, `subscription_added_to_group`,
    # `subscription_removed_from_group`, `chargeback_opened`, `chargeback_lost`,
    # `chargeback_accepted`, `chargeback_closed`, `chargeback_won`,
    # `payment_collection_method_changed`, `component_billing_date_changed`,
    # `subscription_term_renewal_scheduled`,
    # `subscription_term_renewal_pending`,
    # `subscription_term_renewal_activated`, `subscription_term_renewal_removed`
    # 
    # they map to `null` instead.
    # @return [Object]
    attr_accessor :event_specific_data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['key'] = 'key'
      @_hash['message'] = 'message'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['customer_id'] = 'customer_id'
      @_hash['created_at'] = 'created_at'
      @_hash['event_specific_data'] = 'event_specific_data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      %w[
        subscription_id
        customer_id
        event_specific_data
      ]
    end

    def initialize(id:, key:, message:, subscription_id:, customer_id:,
                   created_at:, event_specific_data:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id
      @key = key
      @message = message
      @subscription_id = subscription_id
      @customer_id = customer_id
      @created_at = created_at
      @event_specific_data = event_specific_data
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      key = hash.key?('key') ? hash['key'] : nil
      message = hash.key?('message') ? hash['message'] : nil
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : nil
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : nil
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   end
      event_specific_data = hash.key?('event_specific_data') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:EventEventSpecificData), hash['event_specific_data']
      ) : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Event.new(id: id,
                key: key,
                message: message,
                subscription_id: subscription_id,
                customer_id: customer_id,
                created_at: created_at,
                event_specific_data: event_specific_data,
                additional_properties: additional_properties)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    # Validates an instance of the object from a given value.
    # @param [Event | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.id,
                                ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.key,
                                  ->(val) { EventKey.validate(val) }) and
            APIHelper.valid_type?(value.message,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.subscription_id,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.customer_id,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.created_at,
                                  ->(val) { val.instance_of? DateTime }) and
            UnionTypeLookUp.get(:EventEventSpecificData)
                           .validate(value.event_specific_data)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['id'],
                              ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['key'],
                                ->(val) { EventKey.validate(val) }) and
          APIHelper.valid_type?(value['message'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['subscription_id'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['customer_id'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['created_at'],
                                ->(val) { val.instance_of? String }) and
          UnionTypeLookUp.get(:EventEventSpecificData)
                         .validate(value['event_specific_data'])
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, key: #{@key}, message: #{@message}, subscription_id:"\
      " #{@subscription_id}, customer_id: #{@customer_id}, created_at: #{@created_at},"\
      " event_specific_data: #{@event_specific_data}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, key: #{@key.inspect}, message: #{@message.inspect},"\
      " subscription_id: #{@subscription_id.inspect}, customer_id: #{@customer_id.inspect},"\
      " created_at: #{@created_at.inspect}, event_specific_data: #{@event_specific_data.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
