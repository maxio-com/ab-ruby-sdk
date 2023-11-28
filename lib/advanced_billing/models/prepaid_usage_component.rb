# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PrepaidUsageComponent Model.
  class PrepaidUsageComponent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A name for this component that is suitable for showing customers and
    # displaying on billing statements, ie. "Minutes".
    # @return [String]
    attr_accessor :name

    # The name of the unit of measurement for the component. It should be
    # singular since it will be automatically pluralized when necessary. i.e.
    # “message”, which may then be shown as “5 messages” on a subscription’s
    # component line-item
    # @return [String]
    attr_accessor :unit_name

    # A description for the component that will be displayed to the user on the
    # hosted signup page.
    # @return [String]
    attr_accessor :description

    # A unique identifier for your use that can be used to retrieve this
    # component is subsequent requests.  Must start with a letter or number and
    # may only contain lowercase letters, numbers, or the characters '.', ':',
    # '-', or '_'.
    # @return [String]
    attr_accessor :handle

    # Boolean flag describing whether a component is taxable or not.
    # @return [TrueClass | FalseClass]
    attr_accessor :taxable

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # (Not required for ‘per_unit’ pricing schemes) One or more price brackets.
    # See [Price Bracket
    # Rules](https://chargify.zendesk.com/hc/en-us/articles/4407755865883#genera
    # l-price-bracket-rules) for an overview of how price brackets work for
    # different pricing schemes.
    # @return [Array[Price]]
    attr_accessor :prices

    # (Not required for ‘per_unit’ pricing schemes) One or more price brackets.
    # See [Price Bracket
    # Rules](https://chargify.zendesk.com/hc/en-us/articles/4407755865883#genera
    # l-price-bracket-rules) for an overview of how price brackets work for
    # different pricing schemes.
    # @return [String]
    attr_accessor :upgrade_charge

    # (Not required for ‘per_unit’ pricing schemes) One or more price brackets.
    # See [Price Bracket
    # Rules](https://chargify.zendesk.com/hc/en-us/articles/4407755865883#genera
    # l-price-bracket-rules) for an overview of how price brackets work for
    # different pricing schemes.
    # @return [String]
    attr_accessor :downgrade_credit

    # (Not required for ‘per_unit’ pricing schemes) One or more price brackets.
    # See [Price Bracket
    # Rules](https://chargify.zendesk.com/hc/en-us/articles/4407755865883#genera
    # l-price-bracket-rules) for an overview of how price brackets work for
    # different pricing schemes.
    # @return [Array[PrepaidComponentPricePoint]]
    attr_accessor :price_points

    # The amount the customer will be charged per unit when the pricing scheme
    # is “per_unit”. For On/Off Components, this is the amount that the customer
    # will be charged when they turn the component on for the subscription. The
    # price can contain up to 8 decimal places. i.e. 1.00 or 0.0012 or
    # 0.00000065
    # @return [Object]
    attr_accessor :unit_price

    # A string representing the tax code related to the component type. This is
    # especially important when using the Avalara service to tax based on
    # locale. This attribute has a max length of 10 characters.
    # @return [String]
    attr_accessor :tax_code

    # (Only available on Relationship Invoicing sites) Boolean flag describing
    # if the service date range should show for the component on generated
    # invoices.
    # @return [TrueClass | FalseClass]
    attr_accessor :hide_date_range_on_invoice

    # deprecated May 2011 - use unit_price instead
    # @return [String]
    attr_accessor :price_in_cents

    # deprecated May 2011 - use unit_price instead
    # @return [OveragePricing]
    attr_accessor :overage_pricing

    # Boolean which controls whether or not remaining units should be rolled
    # over to the next period
    # @return [TrueClass | FalseClass]
    attr_accessor :rollover_prepaid_remainder

    # Boolean which controls whether or not the allocated quantity should be
    # renewed at the beginning of each period
    # @return [TrueClass | FalseClass]
    attr_accessor :renew_prepaid_allocation

    # (only for prepaid usage components where rollover_prepaid_remainder is
    # true) The number of `expiration_interval_unit`s after which rollover
    # amounts should expire
    # @return [Float]
    attr_accessor :expiration_interval

    # (only for prepaid usage components where rollover_prepaid_remainder is
    # true) The number of `expiration_interval_unit`s after which rollover
    # amounts should expire
    # @return [IntervalUnit]
    attr_accessor :expiration_interval_unit

    # (only for prepaid usage components where rollover_prepaid_remainder is
    # true) The number of `expiration_interval_unit`s after which rollover
    # amounts should expire
    # @return [TrueClass | FalseClass]
    attr_accessor :display_on_hosted_page

    # (only for prepaid usage components where rollover_prepaid_remainder is
    # true) The number of `expiration_interval_unit`s after which rollover
    # amounts should expire
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_fractional_quantities

    # (only for prepaid usage components where rollover_prepaid_remainder is
    # true) The number of `expiration_interval_unit`s after which rollover
    # amounts should expire
    # @return [Array[Integer]]
    attr_accessor :public_signup_page_ids

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['unit_name'] = 'unit_name'
      @_hash['description'] = 'description'
      @_hash['handle'] = 'handle'
      @_hash['taxable'] = 'taxable'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['prices'] = 'prices'
      @_hash['upgrade_charge'] = 'upgrade_charge'
      @_hash['downgrade_credit'] = 'downgrade_credit'
      @_hash['price_points'] = 'price_points'
      @_hash['unit_price'] = 'unit_price'
      @_hash['tax_code'] = 'tax_code'
      @_hash['hide_date_range_on_invoice'] = 'hide_date_range_on_invoice'
      @_hash['price_in_cents'] = 'price_in_cents'
      @_hash['overage_pricing'] = 'overage_pricing'
      @_hash['rollover_prepaid_remainder'] = 'rollover_prepaid_remainder'
      @_hash['renew_prepaid_allocation'] = 'renew_prepaid_allocation'
      @_hash['expiration_interval'] = 'expiration_interval'
      @_hash['expiration_interval_unit'] = 'expiration_interval_unit'
      @_hash['display_on_hosted_page'] = 'display_on_hosted_page'
      @_hash['allow_fractional_quantities'] = 'allow_fractional_quantities'
      @_hash['public_signup_page_ids'] = 'public_signup_page_ids'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        unit_name
        description
        handle
        taxable
        pricing_scheme
        prices
        upgrade_charge
        downgrade_credit
        price_points
        unit_price
        tax_code
        hide_date_range_on_invoice
        price_in_cents
        overage_pricing
        rollover_prepaid_remainder
        renew_prepaid_allocation
        expiration_interval
        expiration_interval_unit
        display_on_hosted_page
        allow_fractional_quantities
        public_signup_page_ids
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = SKIP,
                   unit_name = SKIP,
                   description = SKIP,
                   handle = SKIP,
                   taxable = SKIP,
                   pricing_scheme = SKIP,
                   prices = SKIP,
                   upgrade_charge = SKIP,
                   downgrade_credit = SKIP,
                   price_points = SKIP,
                   unit_price = SKIP,
                   tax_code = SKIP,
                   hide_date_range_on_invoice = SKIP,
                   price_in_cents = SKIP,
                   overage_pricing = SKIP,
                   rollover_prepaid_remainder = SKIP,
                   renew_prepaid_allocation = SKIP,
                   expiration_interval = SKIP,
                   expiration_interval_unit = SKIP,
                   display_on_hosted_page = SKIP,
                   allow_fractional_quantities = SKIP,
                   public_signup_page_ids = SKIP)
      @name = name unless name == SKIP
      @unit_name = unit_name unless unit_name == SKIP
      @description = description unless description == SKIP
      @handle = handle unless handle == SKIP
      @taxable = taxable unless taxable == SKIP
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @prices = prices unless prices == SKIP
      @upgrade_charge = upgrade_charge unless upgrade_charge == SKIP
      @downgrade_credit = downgrade_credit unless downgrade_credit == SKIP
      @price_points = price_points unless price_points == SKIP
      @unit_price = unit_price unless unit_price == SKIP
      @tax_code = tax_code unless tax_code == SKIP
      unless hide_date_range_on_invoice == SKIP
        @hide_date_range_on_invoice =
          hide_date_range_on_invoice
      end
      @price_in_cents = price_in_cents unless price_in_cents == SKIP
      @overage_pricing = overage_pricing unless overage_pricing == SKIP
      unless rollover_prepaid_remainder == SKIP
        @rollover_prepaid_remainder =
          rollover_prepaid_remainder
      end
      @renew_prepaid_allocation = renew_prepaid_allocation unless renew_prepaid_allocation == SKIP
      @expiration_interval = expiration_interval unless expiration_interval == SKIP
      @expiration_interval_unit = expiration_interval_unit unless expiration_interval_unit == SKIP
      @display_on_hosted_page = display_on_hosted_page unless display_on_hosted_page == SKIP
      unless allow_fractional_quantities == SKIP
        @allow_fractional_quantities =
          allow_fractional_quantities
      end
      @public_signup_page_ids = public_signup_page_ids unless public_signup_page_ids == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      unit_name = hash.key?('unit_name') ? hash['unit_name'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      taxable = hash.key?('taxable') ? hash['taxable'] : SKIP
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : SKIP
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (Price.from_hash(structure) if structure)
        end
      end

      prices = SKIP unless hash.key?('prices')
      upgrade_charge =
        hash.key?('upgrade_charge') ? hash['upgrade_charge'] : SKIP
      downgrade_credit =
        hash.key?('downgrade_credit') ? hash['downgrade_credit'] : SKIP
      # Parameter is an array, so we need to iterate through it
      price_points = nil
      unless hash['price_points'].nil?
        price_points = []
        hash['price_points'].each do |structure|
          price_points << (PrepaidComponentPricePoint.from_hash(structure) if structure)
        end
      end

      price_points = SKIP unless hash.key?('price_points')
      unit_price = hash.key?('unit_price') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:PrepaidUsageComponentUnitPrice), hash['unit_price']
      ) : SKIP
      tax_code = hash.key?('tax_code') ? hash['tax_code'] : SKIP
      hide_date_range_on_invoice =
        hash.key?('hide_date_range_on_invoice') ? hash['hide_date_range_on_invoice'] : SKIP
      price_in_cents =
        hash.key?('price_in_cents') ? hash['price_in_cents'] : SKIP
      overage_pricing = OveragePricing.from_hash(hash['overage_pricing']) if
        hash['overage_pricing']
      rollover_prepaid_remainder =
        hash.key?('rollover_prepaid_remainder') ? hash['rollover_prepaid_remainder'] : SKIP
      renew_prepaid_allocation =
        hash.key?('renew_prepaid_allocation') ? hash['renew_prepaid_allocation'] : SKIP
      expiration_interval =
        hash.key?('expiration_interval') ? hash['expiration_interval'] : SKIP
      expiration_interval_unit =
        hash.key?('expiration_interval_unit') ? hash['expiration_interval_unit'] : SKIP
      display_on_hosted_page =
        hash.key?('display_on_hosted_page') ? hash['display_on_hosted_page'] : SKIP
      allow_fractional_quantities =
        hash.key?('allow_fractional_quantities') ? hash['allow_fractional_quantities'] : SKIP
      public_signup_page_ids =
        hash.key?('public_signup_page_ids') ? hash['public_signup_page_ids'] : SKIP

      # Create object from extracted values.
      PrepaidUsageComponent.new(name,
                                unit_name,
                                description,
                                handle,
                                taxable,
                                pricing_scheme,
                                prices,
                                upgrade_charge,
                                downgrade_credit,
                                price_points,
                                unit_price,
                                tax_code,
                                hide_date_range_on_invoice,
                                price_in_cents,
                                overage_pricing,
                                rollover_prepaid_remainder,
                                renew_prepaid_allocation,
                                expiration_interval,
                                expiration_interval_unit,
                                display_on_hosted_page,
                                allow_fractional_quantities,
                                public_signup_page_ids)
    end

    # Validates an instance of the object from a given value.
    # @param [PrepaidUsageComponent | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
