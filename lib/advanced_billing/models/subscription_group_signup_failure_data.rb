# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupSignupFailureData Model.
  class SubscriptionGroupSignupFailureData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :payer_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :payer_reference

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :payment_profile_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :payment_collection_method

    # TODO: Write general description for this method
    # @return [PayerAttributes]
    attr_accessor :payer_attributes

    # TODO: Write general description for this method
    # @return [SubscriptionGroupCreditCard]
    attr_accessor :credit_card_attributes

    # TODO: Write general description for this method
    # @return [SubscriptionGroupBankAccount]
    attr_accessor :bank_account_attributes

    # TODO: Write general description for this method
    # @return [Array[SubscriptionGroupSignupItem]]
    attr_accessor :subscriptions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payer_id'] = 'payer_id'
      @_hash['payer_reference'] = 'payer_reference'
      @_hash['payment_profile_id'] = 'payment_profile_id'
      @_hash['payment_collection_method'] = 'payment_collection_method'
      @_hash['payer_attributes'] = 'payer_attributes'
      @_hash['credit_card_attributes'] = 'credit_card_attributes'
      @_hash['bank_account_attributes'] = 'bank_account_attributes'
      @_hash['subscriptions'] = 'subscriptions'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        payer_id
        payer_reference
        payment_profile_id
        payment_collection_method
        payer_attributes
        credit_card_attributes
        bank_account_attributes
        subscriptions
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(payer_id = SKIP,
                   payer_reference = SKIP,
                   payment_profile_id = SKIP,
                   payment_collection_method = SKIP,
                   payer_attributes = SKIP,
                   credit_card_attributes = SKIP,
                   bank_account_attributes = SKIP,
                   subscriptions = SKIP,
                   additional_properties = {})
      @payer_id = payer_id unless payer_id == SKIP
      @payer_reference = payer_reference unless payer_reference == SKIP
      @payment_profile_id = payment_profile_id unless payment_profile_id == SKIP
      unless payment_collection_method == SKIP
        @payment_collection_method =
          payment_collection_method
      end
      @payer_attributes = payer_attributes unless payer_attributes == SKIP
      @credit_card_attributes = credit_card_attributes unless credit_card_attributes == SKIP
      @bank_account_attributes = bank_account_attributes unless bank_account_attributes == SKIP
      @subscriptions = subscriptions unless subscriptions == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payer_id = hash.key?('payer_id') ? hash['payer_id'] : SKIP
      payer_reference =
        hash.key?('payer_reference') ? hash['payer_reference'] : SKIP
      payment_profile_id =
        hash.key?('payment_profile_id') ? hash['payment_profile_id'] : SKIP
      payment_collection_method =
        hash.key?('payment_collection_method') ? hash['payment_collection_method'] : SKIP
      payer_attributes = PayerAttributes.from_hash(hash['payer_attributes']) if
        hash['payer_attributes']
      if hash['credit_card_attributes']
        credit_card_attributes = SubscriptionGroupCreditCard.from_hash(hash['credit_card_attributes'])
      end
      if hash['bank_account_attributes']
        bank_account_attributes = SubscriptionGroupBankAccount.from_hash(hash['bank_account_attributes'])
      end
      # Parameter is an array, so we need to iterate through it
      subscriptions = nil
      unless hash['subscriptions'].nil?
        subscriptions = []
        hash['subscriptions'].each do |structure|
          subscriptions << (SubscriptionGroupSignupItem.from_hash(structure) if structure)
        end
      end

      subscriptions = SKIP unless hash.key?('subscriptions')

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      SubscriptionGroupSignupFailureData.new(payer_id,
                                             payer_reference,
                                             payment_profile_id,
                                             payment_collection_method,
                                             payer_attributes,
                                             credit_card_attributes,
                                             bank_account_attributes,
                                             subscriptions,
                                             hash)
    end
  end
end
