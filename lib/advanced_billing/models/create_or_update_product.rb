# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateOrUpdateProduct Model.
  class CreateOrUpdateProduct < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The product name
    # @return [String]
    attr_accessor :name

    # The product API handle
    # @return [String]
    attr_accessor :handle

    # The product description
    # @return [String]
    attr_accessor :description

    # E.g. Internal ID or SKU Number
    # @return [String]
    attr_accessor :accounting_code

    # Deprecated value that can be ignored unless you have legacy hosted pages.
    # For Public Signup Page users, please read this attribute from under the
    # signup page.
    # @return [TrueClass | FalseClass]
    attr_accessor :require_credit_card

    # The product price, in integer cents
    # @return [Integer]
    attr_accessor :price_in_cents

    # The numerical interval. i.e. an interval of ‘30’ coupled with an
    # interval_unit of day would mean this product would renew every 30 days
    # @return [Integer]
    attr_accessor :interval

    # A string representing the interval unit for this product, either month or
    # day
    # @return [IntervalUnit]
    attr_accessor :interval_unit

    # The product trial price, in integer cents
    # @return [Integer]
    attr_accessor :trial_price_in_cents

    # The numerical trial interval. i.e. an interval of ‘30’ coupled with a
    # trial_interval_unit of day would mean this product trial would last 30
    # days.
    # @return [Integer]
    attr_accessor :trial_interval

    # A string representing the trial interval unit for this product, either
    # month or day
    # @return [IntervalUnit]
    attr_accessor :trial_interval_unit

    # A string representing the trial interval unit for this product, either
    # month or day
    # @return [String]
    attr_accessor :trial_type

    # The numerical expiration interval. i.e. an expiration_interval of ‘30’
    # coupled with an expiration_interval_unit of day would mean this product
    # would expire after 30 days.
    # @return [Integer]
    attr_accessor :expiration_interval

    # A string representing the expiration interval unit for this product,
    # either month, day or never
    # @return [ExpirationIntervalUnit]
    attr_accessor :expiration_interval_unit

    # A string representing the expiration interval unit for this product,
    # either month, day or never
    # @return [TrueClass | FalseClass]
    attr_accessor :auto_create_signup_page

    # A string representing the tax code related to the product type. This is
    # especially important when using the Avalara service to tax based on
    # locale. This attribute has a max length of 10 characters.
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
      @_hash['trial_price_in_cents'] = 'trial_price_in_cents'
      @_hash['trial_interval'] = 'trial_interval'
      @_hash['trial_interval_unit'] = 'trial_interval_unit'
      @_hash['trial_type'] = 'trial_type'
      @_hash['expiration_interval'] = 'expiration_interval'
      @_hash['expiration_interval_unit'] = 'expiration_interval_unit'
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
        trial_price_in_cents
        trial_interval
        trial_interval_unit
        trial_type
        expiration_interval
        expiration_interval_unit
        auto_create_signup_page
        tax_code
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        trial_interval_unit
        expiration_interval_unit
      ]
    end

    def initialize(name:, description:, price_in_cents:, interval:,
                   interval_unit:, handle: SKIP, accounting_code: SKIP,
                   require_credit_card: SKIP, trial_price_in_cents: SKIP,
                   trial_interval: SKIP, trial_interval_unit: SKIP,
                   trial_type: SKIP, expiration_interval: SKIP,
                   expiration_interval_unit: SKIP,
                   auto_create_signup_page: SKIP, tax_code: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @name = name
      @handle = handle unless handle == SKIP
      @description = description
      @accounting_code = accounting_code unless accounting_code == SKIP
      @require_credit_card = require_credit_card unless require_credit_card == SKIP
      @price_in_cents = price_in_cents
      @interval = interval
      @interval_unit = interval_unit
      @trial_price_in_cents = trial_price_in_cents unless trial_price_in_cents == SKIP
      @trial_interval = trial_interval unless trial_interval == SKIP
      @trial_interval_unit = trial_interval_unit unless trial_interval_unit == SKIP
      @trial_type = trial_type unless trial_type == SKIP
      @expiration_interval = expiration_interval unless expiration_interval == SKIP
      @expiration_interval_unit = expiration_interval_unit unless expiration_interval_unit == SKIP
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
      trial_price_in_cents =
        hash.key?('trial_price_in_cents') ? hash['trial_price_in_cents'] : SKIP
      trial_interval =
        hash.key?('trial_interval') ? hash['trial_interval'] : SKIP
      trial_interval_unit =
        hash.key?('trial_interval_unit') ? hash['trial_interval_unit'] : SKIP
      trial_type = hash.key?('trial_type') ? hash['trial_type'] : SKIP
      expiration_interval =
        hash.key?('expiration_interval') ? hash['expiration_interval'] : SKIP
      expiration_interval_unit =
        hash.key?('expiration_interval_unit') ? hash['expiration_interval_unit'] : SKIP
      auto_create_signup_page =
        hash.key?('auto_create_signup_page') ? hash['auto_create_signup_page'] : SKIP
      tax_code = hash.key?('tax_code') ? hash['tax_code'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateOrUpdateProduct.new(name: name,
                                description: description,
                                price_in_cents: price_in_cents,
                                interval: interval,
                                interval_unit: interval_unit,
                                handle: handle,
                                accounting_code: accounting_code,
                                require_credit_card: require_credit_card,
                                trial_price_in_cents: trial_price_in_cents,
                                trial_interval: trial_interval,
                                trial_interval_unit: trial_interval_unit,
                                trial_type: trial_type,
                                expiration_interval: expiration_interval,
                                expiration_interval_unit: expiration_interval_unit,
                                auto_create_signup_page: auto_create_signup_page,
                                tax_code: tax_code,
                                additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, handle: #{@handle}, description: #{@description},"\
      " accounting_code: #{@accounting_code}, require_credit_card: #{@require_credit_card},"\
      " price_in_cents: #{@price_in_cents}, interval: #{@interval}, interval_unit:"\
      " #{@interval_unit}, trial_price_in_cents: #{@trial_price_in_cents}, trial_interval:"\
      " #{@trial_interval}, trial_interval_unit: #{@trial_interval_unit}, trial_type:"\
      " #{@trial_type}, expiration_interval: #{@expiration_interval}, expiration_interval_unit:"\
      " #{@expiration_interval_unit}, auto_create_signup_page: #{@auto_create_signup_page},"\
      " tax_code: #{@tax_code}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, handle: #{@handle.inspect}, description:"\
      " #{@description.inspect}, accounting_code: #{@accounting_code.inspect},"\
      " require_credit_card: #{@require_credit_card.inspect}, price_in_cents:"\
      " #{@price_in_cents.inspect}, interval: #{@interval.inspect}, interval_unit:"\
      " #{@interval_unit.inspect}, trial_price_in_cents: #{@trial_price_in_cents.inspect},"\
      " trial_interval: #{@trial_interval.inspect}, trial_interval_unit:"\
      " #{@trial_interval_unit.inspect}, trial_type: #{@trial_type.inspect}, expiration_interval:"\
      " #{@expiration_interval.inspect}, expiration_interval_unit:"\
      " #{@expiration_interval_unit.inspect}, auto_create_signup_page:"\
      " #{@auto_create_signup_page.inspect}, tax_code: #{@tax_code.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
