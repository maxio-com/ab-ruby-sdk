# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # A nested data structure detailing the method of payment
  class InvoiceEventPayment1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :masked_account_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :masked_routing_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :card_brand

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :card_expiration

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_four

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :masked_card_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :details

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kind

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['masked_account_number'] = 'masked_account_number'
      @_hash['masked_routing_number'] = 'masked_routing_number'
      @_hash['card_brand'] = 'card_brand'
      @_hash['card_expiration'] = 'card_expiration'
      @_hash['last_four'] = 'last_four'
      @_hash['masked_card_number'] = 'masked_card_number'
      @_hash['details'] = 'details'
      @_hash['kind'] = 'kind'
      @_hash['memo'] = 'memo'
      @_hash['email'] = 'email'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        type
        card_expiration
        last_four
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        last_four
        details
        memo
      ]
    end

    def initialize(masked_account_number = nil,
                   masked_routing_number = nil,
                   card_brand = nil,
                   masked_card_number = nil,
                   details = nil,
                   kind = nil,
                   memo = nil,
                   email = nil,
                   type = 'Invoice Event Payment1',
                   card_expiration = SKIP,
                   last_four = SKIP)
      @type = type unless type == SKIP
      @masked_account_number = masked_account_number
      @masked_routing_number = masked_routing_number
      @card_brand = card_brand
      @card_expiration = card_expiration unless card_expiration == SKIP
      @last_four = last_four unless last_four == SKIP
      @masked_card_number = masked_card_number
      @details = details
      @kind = kind
      @memo = memo
      @email = email
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      masked_account_number =
        hash.key?('masked_account_number') ? hash['masked_account_number'] : nil
      masked_routing_number =
        hash.key?('masked_routing_number') ? hash['masked_routing_number'] : nil
      card_brand = hash.key?('card_brand') ? hash['card_brand'] : nil
      masked_card_number =
        hash.key?('masked_card_number') ? hash['masked_card_number'] : nil
      details = hash.key?('details') ? hash['details'] : nil
      kind = hash.key?('kind') ? hash['kind'] : nil
      memo = hash.key?('memo') ? hash['memo'] : nil
      email = hash.key?('email') ? hash['email'] : nil
      type = hash['type'] ||= 'Invoice Event Payment1'
      card_expiration =
        hash.key?('card_expiration') ? hash['card_expiration'] : SKIP
      last_four = hash.key?('last_four') ? hash['last_four'] : SKIP

      # Create object from extracted values.
      InvoiceEventPayment1.new(masked_account_number,
                               masked_routing_number,
                               card_brand,
                               masked_card_number,
                               details,
                               kind,
                               memo,
                               email,
                               type,
                               card_expiration,
                               last_four)
    end
  end
end