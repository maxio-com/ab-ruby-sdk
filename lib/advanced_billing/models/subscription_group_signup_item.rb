# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupSignupItem Model.
  class SubscriptionGroupSignupItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The API Handle of the product for which you are creating a subscription.
    # Required, unless a `product_id` is given instead.
    # @return [String]
    attr_accessor :product_handle

    # The Product ID of the product for which you are creating a subscription.
    # You can pass either `product_id` or `product_handle`.
    # @return [Integer]
    attr_accessor :product_id

    # The ID of the particular price point on the product.
    # @return [Integer]
    attr_accessor :product_price_point_id

    # The user-friendly API handle of a product's particular price point.
    # @return [String]
    attr_accessor :product_price_point_handle

    # Use in place of passing product and component information to set up the
    # subscription with an existing offer. May be either the Chargify ID of the
    # offer or its handle prefixed with `handle:`
    # @return [Integer]
    attr_accessor :offer_id

    # The reference value (provided by your app) for the subscription itelf.
    # @return [String]
    attr_accessor :reference

    # One of the subscriptions must be marked as primary in the group.
    # @return [TrueClass | FalseClass]
    attr_accessor :primary

    # (Optional) If Multi-Currency is enabled and the currency is configured in
    # Chargify, pass it at signup to create a subscription on a non-default
    # currency. Note that you cannot update the currency of an existing
    # subscription.
    # @return [String]
    attr_accessor :currency

    # An array for all the coupons attached to the subscription.
    # @return [Array[String]]
    attr_accessor :coupon_codes

    # An array for all the coupons attached to the subscription.
    # @return [Array[SubscriptionGroupSignupComponent]]
    attr_accessor :components

    # (Optional) Used in place of `product_price_point_id` to define a custom
    # price point unique to the subscription
    # @return [SubscriptionCustomPrice]
    attr_accessor :custom_price

    # (Optional). Cannot be used when also specifying next_billing_at
    # @return [CalendarBilling]
    attr_accessor :calendar_billing

    # (Optional) A set of key/value pairs representing custom fields and their
    # values. Metafields will be created “on-the-fly” in your site for a given
    # key, if they have not been created yet.
    # @return [Hash[String, String]]
    attr_accessor :metafields

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['product_handle'] = 'product_handle'
      @_hash['product_id'] = 'product_id'
      @_hash['product_price_point_id'] = 'product_price_point_id'
      @_hash['product_price_point_handle'] = 'product_price_point_handle'
      @_hash['offer_id'] = 'offer_id'
      @_hash['reference'] = 'reference'
      @_hash['primary'] = 'primary'
      @_hash['currency'] = 'currency'
      @_hash['coupon_codes'] = 'coupon_codes'
      @_hash['components'] = 'components'
      @_hash['custom_price'] = 'custom_price'
      @_hash['calendar_billing'] = 'calendar_billing'
      @_hash['metafields'] = 'metafields'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        product_handle
        product_id
        product_price_point_id
        product_price_point_handle
        offer_id
        reference
        primary
        currency
        coupon_codes
        components
        custom_price
        calendar_billing
        metafields
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(product_handle: SKIP, product_id: SKIP,
                   product_price_point_id: SKIP,
                   product_price_point_handle: SKIP, offer_id: SKIP,
                   reference: SKIP, primary: SKIP, currency: SKIP,
                   coupon_codes: SKIP, components: SKIP, custom_price: SKIP,
                   calendar_billing: SKIP, metafields: SKIP,
                   additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @product_handle = product_handle unless product_handle == SKIP
      @product_id = product_id unless product_id == SKIP
      @product_price_point_id = product_price_point_id unless product_price_point_id == SKIP
      unless product_price_point_handle == SKIP
        @product_price_point_handle =
          product_price_point_handle
      end
      @offer_id = offer_id unless offer_id == SKIP
      @reference = reference unless reference == SKIP
      @primary = primary unless primary == SKIP
      @currency = currency unless currency == SKIP
      @coupon_codes = coupon_codes unless coupon_codes == SKIP
      @components = components unless components == SKIP
      @custom_price = custom_price unless custom_price == SKIP
      @calendar_billing = calendar_billing unless calendar_billing == SKIP
      @metafields = metafields unless metafields == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      product_handle =
        hash.key?('product_handle') ? hash['product_handle'] : SKIP
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
      product_price_point_id =
        hash.key?('product_price_point_id') ? hash['product_price_point_id'] : SKIP
      product_price_point_handle =
        hash.key?('product_price_point_handle') ? hash['product_price_point_handle'] : SKIP
      offer_id = hash.key?('offer_id') ? hash['offer_id'] : SKIP
      reference = hash.key?('reference') ? hash['reference'] : SKIP
      primary = hash.key?('primary') ? hash['primary'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      coupon_codes = hash.key?('coupon_codes') ? hash['coupon_codes'] : SKIP
      # Parameter is an array, so we need to iterate through it
      components = nil
      unless hash['components'].nil?
        components = []
        hash['components'].each do |structure|
          components << (SubscriptionGroupSignupComponent.from_hash(structure) if structure)
        end
      end

      components = SKIP unless hash.key?('components')
      custom_price = SubscriptionCustomPrice.from_hash(hash['custom_price']) if
        hash['custom_price']
      calendar_billing = CalendarBilling.from_hash(hash['calendar_billing']) if
        hash['calendar_billing']
      metafields = hash.key?('metafields') ? hash['metafields'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionGroupSignupItem.new(product_handle: product_handle,
                                      product_id: product_id,
                                      product_price_point_id: product_price_point_id,
                                      product_price_point_handle: product_price_point_handle,
                                      offer_id: offer_id,
                                      reference: reference,
                                      primary: primary,
                                      currency: currency,
                                      coupon_codes: coupon_codes,
                                      components: components,
                                      custom_price: custom_price,
                                      calendar_billing: calendar_billing,
                                      metafields: metafields,
                                      additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionGroupSignupItem | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
