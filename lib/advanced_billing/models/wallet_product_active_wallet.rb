# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # One active wallet drawing on this Wallet Product.
  class WalletProductActiveWallet < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Advanced Billing id of the wallet.
    # @return [Integer]
    attr_accessor :id

    # The Advanced Billing id of the wallet.
    # @return [Integer]
    attr_accessor :subscription_id

    # The owning customer's organization name, falling back to their full name,
    # then to `"Customer #<id>"`. `"Customer"` (with no id) when the wallet's
    # subscription has no customer at all.
    # @return [String]
    attr_accessor :company_name

    # See the same field on [Wallet Product Usage
    # Template]($m/Wallet%20Product%20Usage%20Template). The same caveats apply.
    # @return [String]
    attr_accessor :purchase_mechanism

    # See the same field on [Wallet Product Usage
    # Template]($m/Wallet%20Product%20Usage%20Template). The same caveats apply.
    # @return [String]
    attr_accessor :price_point_name

    # See the same field on [Wallet Product Usage
    # Template]($m/Wallet%20Product%20Usage%20Template). The same caveats apply.
    # @return [String]
    attr_accessor :currency

    # `false` when the wallet's Feature is archived.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['company_name'] = 'company_name'
      @_hash['purchase_mechanism'] = 'purchase_mechanism'
      @_hash['price_point_name'] = 'price_point_name'
      @_hash['currency'] = 'currency'
      @_hash['active'] = 'active'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        subscription_id
        company_name
        purchase_mechanism
        price_point_name
        currency
        active
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        purchase_mechanism
        price_point_name
      ]
    end

    def initialize(id: SKIP, subscription_id: SKIP, company_name: SKIP,
                   purchase_mechanism: SKIP, price_point_name: SKIP,
                   currency: SKIP, active: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @company_name = company_name unless company_name == SKIP
      @purchase_mechanism = purchase_mechanism unless purchase_mechanism == SKIP
      @price_point_name = price_point_name unless price_point_name == SKIP
      @currency = currency unless currency == SKIP
      @active = active unless active == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      company_name = hash.key?('company_name') ? hash['company_name'] : SKIP
      purchase_mechanism =
        hash.key?('purchase_mechanism') ? hash['purchase_mechanism'] : SKIP
      price_point_name =
        hash.key?('price_point_name') ? hash['price_point_name'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      active = hash.key?('active') ? hash['active'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletProductActiveWallet.new(id: id,
                                    subscription_id: subscription_id,
                                    company_name: company_name,
                                    purchase_mechanism: purchase_mechanism,
                                    price_point_name: price_point_name,
                                    currency: currency,
                                    active: active,
                                    additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, subscription_id: #{@subscription_id}, company_name:"\
      " #{@company_name}, purchase_mechanism: #{@purchase_mechanism}, price_point_name:"\
      " #{@price_point_name}, currency: #{@currency}, active: #{@active}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, subscription_id: #{@subscription_id.inspect},"\
      " company_name: #{@company_name.inspect}, purchase_mechanism:"\
      " #{@purchase_mechanism.inspect}, price_point_name: #{@price_point_name.inspect}, currency:"\
      " #{@currency.inspect}, active: #{@active.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
