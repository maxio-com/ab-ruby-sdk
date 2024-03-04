# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupSignup Model.
  class SubscriptionGroupSignup < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :payment_profile_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :payer_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :payer_reference

    # The type of payment collection to be used in the subscription. For legacy
    # Statements Architecture valid options are - `invoice`, `automatic`. For
    # current Relationship Invoicing Architecture valid options are -
    # `remittance`, `automatic`, `prepaid`.
    # @return [CollectionMethod]
    attr_accessor :payment_collection_method

    # The type of payment collection to be used in the subscription. For legacy
    # Statements Architecture valid options are - `invoice`, `automatic`. For
    # current Relationship Invoicing Architecture valid options are -
    # `remittance`, `automatic`, `prepaid`.
    # @return [PayerAttributes]
    attr_accessor :payer_attributes

    # The type of payment collection to be used in the subscription. For legacy
    # Statements Architecture valid options are - `invoice`, `automatic`. For
    # current Relationship Invoicing Architecture valid options are -
    # `remittance`, `automatic`, `prepaid`.
    # @return [SubscriptionGroupCreditCard]
    attr_accessor :credit_card_attributes

    # The type of payment collection to be used in the subscription. For legacy
    # Statements Architecture valid options are - `invoice`, `automatic`. For
    # current Relationship Invoicing Architecture valid options are -
    # `remittance`, `automatic`, `prepaid`.
    # @return [SubscriptionGroupBankAccount]
    attr_accessor :bank_account_attributes

    # The type of payment collection to be used in the subscription. For legacy
    # Statements Architecture valid options are - `invoice`, `automatic`. For
    # current Relationship Invoicing Architecture valid options are -
    # `remittance`, `automatic`, `prepaid`.
    # @return [Array[SubscriptionGroupSignupItem]]
    attr_accessor :subscriptions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_profile_id'] = 'payment_profile_id'
      @_hash['payer_id'] = 'payer_id'
      @_hash['payer_reference'] = 'payer_reference'
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
        payment_profile_id
        payer_id
        payer_reference
        payment_collection_method
        payer_attributes
        credit_card_attributes
        bank_account_attributes
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(subscriptions = nil,
                   payment_profile_id = SKIP,
                   payer_id = SKIP,
                   payer_reference = SKIP,
                   payment_collection_method = CollectionMethod::AUTOMATIC,
                   payer_attributes = SKIP,
                   credit_card_attributes = SKIP,
                   bank_account_attributes = SKIP,
                   additional_properties = {})
      @payment_profile_id = payment_profile_id unless payment_profile_id == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @payer_reference = payer_reference unless payer_reference == SKIP
      unless payment_collection_method == SKIP
        @payment_collection_method =
          payment_collection_method
      end
      @payer_attributes = payer_attributes unless payer_attributes == SKIP
      @credit_card_attributes = credit_card_attributes unless credit_card_attributes == SKIP
      @bank_account_attributes = bank_account_attributes unless bank_account_attributes == SKIP
      @subscriptions = subscriptions

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      subscriptions = nil
      unless hash['subscriptions'].nil?
        subscriptions = []
        hash['subscriptions'].each do |structure|
          subscriptions << (SubscriptionGroupSignupItem.from_hash(structure) if structure)
        end
      end

      subscriptions = nil unless hash.key?('subscriptions')
      payment_profile_id =
        hash.key?('payment_profile_id') ? hash['payment_profile_id'] : SKIP
      payer_id = hash.key?('payer_id') ? hash['payer_id'] : SKIP
      payer_reference =
        hash.key?('payer_reference') ? hash['payer_reference'] : SKIP
      payment_collection_method =
        hash['payment_collection_method'] ||= CollectionMethod::AUTOMATIC
      payer_attributes = PayerAttributes.from_hash(hash['payer_attributes']) if
        hash['payer_attributes']
      if hash['credit_card_attributes']
        credit_card_attributes = SubscriptionGroupCreditCard.from_hash(hash['credit_card_attributes'])
      end
      if hash['bank_account_attributes']
        bank_account_attributes = SubscriptionGroupBankAccount.from_hash(hash['bank_account_attributes'])
      end

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      SubscriptionGroupSignup.new(subscriptions,
                                  payment_profile_id,
                                  payer_id,
                                  payer_reference,
                                  payment_collection_method,
                                  payer_attributes,
                                  credit_card_attributes,
                                  bank_account_attributes,
                                  hash)
    end
  end
end
