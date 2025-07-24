# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # Prepayment Model.
  class Prepayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscription_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :remaining_amount_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :refunded_amount_in_cents

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :details

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :external

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # The payment type of the prepayment.
    # @return [PrepaymentMethod]
    attr_accessor :payment_type

    # The payment type of the prepayment.
    # @return [DateTime]
    attr_accessor :created_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['remaining_amount_in_cents'] = 'remaining_amount_in_cents'
      @_hash['refunded_amount_in_cents'] = 'refunded_amount_in_cents'
      @_hash['details'] = 'details'
      @_hash['external'] = 'external'
      @_hash['memo'] = 'memo'
      @_hash['payment_type'] = 'payment_type'
      @_hash['created_at'] = 'created_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        refunded_amount_in_cents
        details
        payment_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id:, subscription_id:, amount_in_cents:,
                   remaining_amount_in_cents:, external:, memo:, created_at:,
                   refunded_amount_in_cents: SKIP, details: SKIP,
                   payment_type: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id
      @subscription_id = subscription_id
      @amount_in_cents = amount_in_cents
      @remaining_amount_in_cents = remaining_amount_in_cents
      @refunded_amount_in_cents = refunded_amount_in_cents unless refunded_amount_in_cents == SKIP
      @details = details unless details == SKIP
      @external = external
      @memo = memo
      @payment_type = payment_type unless payment_type == SKIP
      @created_at = created_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : nil
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : nil
      remaining_amount_in_cents =
        hash.key?('remaining_amount_in_cents') ? hash['remaining_amount_in_cents'] : nil
      external = hash.key?('external') ? hash['external'] : nil
      memo = hash.key?('memo') ? hash['memo'] : nil
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   end
      refunded_amount_in_cents =
        hash.key?('refunded_amount_in_cents') ? hash['refunded_amount_in_cents'] : SKIP
      details = hash.key?('details') ? hash['details'] : SKIP
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Prepayment.new(id: id,
                     subscription_id: subscription_id,
                     amount_in_cents: amount_in_cents,
                     remaining_amount_in_cents: remaining_amount_in_cents,
                     external: external,
                     memo: memo,
                     created_at: created_at,
                     refunded_amount_in_cents: refunded_amount_in_cents,
                     details: details,
                     payment_type: payment_type,
                     additional_properties: additional_properties)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, subscription_id: #{@subscription_id}, amount_in_cents:"\
      " #{@amount_in_cents}, remaining_amount_in_cents: #{@remaining_amount_in_cents},"\
      " refunded_amount_in_cents: #{@refunded_amount_in_cents}, details: #{@details}, external:"\
      " #{@external}, memo: #{@memo}, payment_type: #{@payment_type}, created_at: #{@created_at},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, subscription_id: #{@subscription_id.inspect},"\
      " amount_in_cents: #{@amount_in_cents.inspect}, remaining_amount_in_cents:"\
      " #{@remaining_amount_in_cents.inspect}, refunded_amount_in_cents:"\
      " #{@refunded_amount_in_cents.inspect}, details: #{@details.inspect}, external:"\
      " #{@external.inspect}, memo: #{@memo.inspect}, payment_type: #{@payment_type.inspect},"\
      " created_at: #{@created_at.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
