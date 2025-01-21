# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoicePaymentMethod Model.
  class InvoicePaymentMethod < BaseModel
    SKIP = Object.new
    private_constant :SKIP

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
    attr_accessor :type

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

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['details'] = 'details'
      @_hash['kind'] = 'kind'
      @_hash['memo'] = 'memo'
      @_hash['type'] = 'type'
      @_hash['card_brand'] = 'card_brand'
      @_hash['card_expiration'] = 'card_expiration'
      @_hash['last_four'] = 'last_four'
      @_hash['masked_card_number'] = 'masked_card_number'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        details
        kind
        memo
        type
        card_brand
        card_expiration
        last_four
        masked_card_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        last_four
      ]
    end

    def initialize(details: SKIP, kind: SKIP, memo: SKIP, type: SKIP,
                   card_brand: SKIP, card_expiration: SKIP, last_four: SKIP,
                   masked_card_number: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @details = details unless details == SKIP
      @kind = kind unless kind == SKIP
      @memo = memo unless memo == SKIP
      @type = type unless type == SKIP
      @card_brand = card_brand unless card_brand == SKIP
      @card_expiration = card_expiration unless card_expiration == SKIP
      @last_four = last_four unless last_four == SKIP
      @masked_card_number = masked_card_number unless masked_card_number == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      details = hash.key?('details') ? hash['details'] : SKIP
      kind = hash.key?('kind') ? hash['kind'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      card_brand = hash.key?('card_brand') ? hash['card_brand'] : SKIP
      card_expiration =
        hash.key?('card_expiration') ? hash['card_expiration'] : SKIP
      last_four = hash.key?('last_four') ? hash['last_four'] : SKIP
      masked_card_number =
        hash.key?('masked_card_number') ? hash['masked_card_number'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoicePaymentMethod.new(details: details,
                               kind: kind,
                               memo: memo,
                               type: type,
                               card_brand: card_brand,
                               card_expiration: card_expiration,
                               last_four: last_four,
                               masked_card_number: masked_card_number,
                               additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoicePaymentMethod | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} details: #{@details}, kind: #{@kind}, memo: #{@memo}, type: #{@type},"\
      " card_brand: #{@card_brand}, card_expiration: #{@card_expiration}, last_four:"\
      " #{@last_four}, masked_card_number: #{@masked_card_number}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} details: #{@details.inspect}, kind: #{@kind.inspect}, memo:"\
      " #{@memo.inspect}, type: #{@type.inspect}, card_brand: #{@card_brand.inspect},"\
      " card_expiration: #{@card_expiration.inspect}, last_four: #{@last_four.inspect},"\
      " masked_card_number: #{@masked_card_number.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
