# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateOrUpdateProduct Model.
  class CreateOrUpdateProduct < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :handle

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :accounting_code

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :require_credit_card

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :interval

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :interval_unit

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :auto_create_signup_page

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['description'] = 'description'
      @_hash['accounting_code'] = 'accounting_code'
      @_hash['require_credit_card'] = 'require_credit_card'
      @_hash['price_in_cents'] = 'price_in_cents'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash['auto_create_signup_page'] = 'auto_create_signup_page'
      @_hash['tax_code'] = 'tax_code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        handle
        accounting_code
        require_credit_card
        auto_create_signup_page
        tax_code
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = nil,
                   description = nil,
                   price_in_cents = nil,
                   interval = nil,
                   interval_unit = nil,
                   handle = SKIP,
                   accounting_code = SKIP,
                   require_credit_card = SKIP,
                   auto_create_signup_page = SKIP,
                   tax_code = SKIP)
      @name = name
      @handle = handle unless handle == SKIP
      @description = description
      @accounting_code = accounting_code unless accounting_code == SKIP
      @require_credit_card = require_credit_card unless require_credit_card == SKIP
      @price_in_cents = price_in_cents
      @interval = interval
      @interval_unit = interval_unit
      @auto_create_signup_page = auto_create_signup_page unless auto_create_signup_page == SKIP
      @tax_code = tax_code unless tax_code == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      description = hash.key?('description') ? hash['description'] : nil
      price_in_cents =
        hash.key?('price_in_cents') ? hash['price_in_cents'] : nil
      interval = hash.key?('interval') ? hash['interval'] : nil
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : nil
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      accounting_code =
        hash.key?('accounting_code') ? hash['accounting_code'] : SKIP
      require_credit_card =
        hash.key?('require_credit_card') ? hash['require_credit_card'] : SKIP
      auto_create_signup_page =
        hash.key?('auto_create_signup_page') ? hash['auto_create_signup_page'] : SKIP
      tax_code = hash.key?('tax_code') ? hash['tax_code'] : SKIP

      # Create object from extracted values.
      CreateOrUpdateProduct.new(name,
                                description,
                                price_in_cents,
                                interval,
                                interval_unit,
                                handle,
                                accounting_code,
                                require_credit_card,
                                auto_create_signup_page,
                                tax_code)
    end
  end
end
