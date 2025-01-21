# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Component Model.
  class Component < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The unique ID assigned to the component by Chargify. This ID can be used
    # to fetch the component from the API.
    # @return [Integer]
    attr_accessor :id

    # The name of the Component, suitable for display on statements. i.e. Text
    # Messages.
    # @return [String]
    attr_accessor :name

    # The component API handle
    # @return [String]
    attr_accessor :handle

    # The component API handle
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # The name of the unit that the component’s usage is measured in. i.e.
    # message
    # @return [String]
    attr_accessor :unit_name

    # The amount the customer will be charged per unit. This field is only
    # populated for ‘per_unit’ pricing schemes, otherwise it may be null.
    # @return [String]
    attr_accessor :unit_price

    # The id of the Product Family to which the Component belongs
    # @return [Integer]
    attr_accessor :product_family_id

    # The name of the Product Family to which the Component belongs
    # @return [String]
    attr_accessor :product_family_name

    # deprecated - use unit_price instead
    # @return [Integer]
    attr_accessor :price_per_unit_in_cents

    # A handle for the component type
    # @return [ComponentKind]
    attr_accessor :kind

    # Boolean flag describing whether a component is archived or not.
    # @return [TrueClass | FalseClass]
    attr_accessor :archived

    # Boolean flag describing whether a component is taxable or not.
    # @return [TrueClass | FalseClass]
    attr_accessor :taxable

    # The description of the component.
    # @return [String]
    attr_accessor :description

    # The description of the component.
    # @return [Integer]
    attr_accessor :default_price_point_id

    # Applicable only to prepaid usage components. An array of overage price
    # brackets.
    # @return [Array[ComponentPrice]]
    attr_accessor :overage_prices

    # An array of price brackets. If the component uses the ‘per_unit’ pricing
    # scheme, this array will be empty.
    # @return [Array[ComponentPrice]]
    attr_accessor :prices

    # Count for the number of price points associated with the component
    # @return [Integer]
    attr_accessor :price_point_count

    # URL that points to the location to read the existing price points via GET
    # request
    # @return [String]
    attr_accessor :price_points_url

    # URL that points to the location to read the existing price points via GET
    # request
    # @return [String]
    attr_accessor :default_price_point_name

    # A string representing the tax code related to the component type. This is
    # especially important when using the Avalara service to tax based on
    # locale. This attribute has a max length of 10 characters.
    # @return [String]
    attr_accessor :tax_code

    # A string representing the tax code related to the component type. This is
    # especially important when using the Avalara service to tax based on
    # locale. This attribute has a max length of 10 characters.
    # @return [TrueClass | FalseClass]
    attr_accessor :recurring

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [CreditType]
    attr_accessor :upgrade_charge

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [CreditType]
    attr_accessor :downgrade_credit

    # Timestamp indicating when this component was created
    # @return [DateTime]
    attr_accessor :created_at

    # Timestamp indicating when this component was updated
    # @return [DateTime]
    attr_accessor :updated_at

    # Timestamp indicating when this component was archived
    # @return [DateTime]
    attr_accessor :archived_at

    # (Only available on Relationship Invoicing sites) Boolean flag describing
    # if the service date range should show for the component on generated
    # invoices.
    # @return [TrueClass | FalseClass]
    attr_accessor :hide_date_range_on_invoice

    # (Only available on Relationship Invoicing sites) Boolean flag describing
    # if the service date range should show for the component on generated
    # invoices.
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_fractional_quantities

    # One of the following: Business Software, Consumer Software, Digital
    # Services, Physical Goods, Other
    # @return [ItemCategory]
    attr_accessor :item_category

    # One of the following: Business Software, Consumer Software, Digital
    # Services, Physical Goods, Other
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # E.g. Internal ID or SKU Number
    # @return [String]
    attr_accessor :accounting_code

    # (Only for Event Based Components) This is an ID of a metric attached to
    # the component. This metric is used to bill upon collected events.
    # @return [Integer]
    attr_accessor :event_based_billing_metric_id

    # The numerical interval. i.e. an interval of ‘30’ coupled with an
    # interval_unit of day would mean this component's default price point would
    # renew every 30 days. This property is only available for sites with
    # Multifrequency enabled.
    # @return [Integer]
    attr_accessor :interval

    # A string representing the interval unit for this component's default price
    # point, either month or day. This property is only available for sites with
    # Multifrequency enabled.
    # @return [IntervalUnit]
    attr_accessor :interval_unit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['unit_name'] = 'unit_name'
      @_hash['unit_price'] = 'unit_price'
      @_hash['product_family_id'] = 'product_family_id'
      @_hash['product_family_name'] = 'product_family_name'
      @_hash['price_per_unit_in_cents'] = 'price_per_unit_in_cents'
      @_hash['kind'] = 'kind'
      @_hash['archived'] = 'archived'
      @_hash['taxable'] = 'taxable'
      @_hash['description'] = 'description'
      @_hash['default_price_point_id'] = 'default_price_point_id'
      @_hash['overage_prices'] = 'overage_prices'
      @_hash['prices'] = 'prices'
      @_hash['price_point_count'] = 'price_point_count'
      @_hash['price_points_url'] = 'price_points_url'
      @_hash['default_price_point_name'] = 'default_price_point_name'
      @_hash['tax_code'] = 'tax_code'
      @_hash['recurring'] = 'recurring'
      @_hash['upgrade_charge'] = 'upgrade_charge'
      @_hash['downgrade_credit'] = 'downgrade_credit'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['archived_at'] = 'archived_at'
      @_hash['hide_date_range_on_invoice'] = 'hide_date_range_on_invoice'
      @_hash['allow_fractional_quantities'] = 'allow_fractional_quantities'
      @_hash['item_category'] = 'item_category'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash['accounting_code'] = 'accounting_code'
      @_hash['event_based_billing_metric_id'] =
        'event_based_billing_metric_id'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        handle
        pricing_scheme
        unit_name
        unit_price
        product_family_id
        product_family_name
        price_per_unit_in_cents
        kind
        archived
        taxable
        description
        default_price_point_id
        overage_prices
        prices
        price_point_count
        price_points_url
        default_price_point_name
        tax_code
        recurring
        upgrade_charge
        downgrade_credit
        created_at
        updated_at
        archived_at
        hide_date_range_on_invoice
        allow_fractional_quantities
        item_category
        use_site_exchange_rate
        accounting_code
        event_based_billing_metric_id
        interval
        interval_unit
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        handle
        pricing_scheme
        unit_price
        price_per_unit_in_cents
        description
        default_price_point_id
        overage_prices
        prices
        price_points_url
        tax_code
        upgrade_charge
        downgrade_credit
        archived_at
        item_category
        use_site_exchange_rate
        accounting_code
        interval_unit
      ]
    end

    def initialize(id: SKIP, name: SKIP, handle: SKIP, pricing_scheme: SKIP,
                   unit_name: SKIP, unit_price: SKIP, product_family_id: SKIP,
                   product_family_name: SKIP, price_per_unit_in_cents: SKIP,
                   kind: SKIP, archived: SKIP, taxable: SKIP, description: SKIP,
                   default_price_point_id: SKIP, overage_prices: SKIP,
                   prices: SKIP, price_point_count: SKIP,
                   price_points_url: SKIP, default_price_point_name: SKIP,
                   tax_code: SKIP, recurring: SKIP, upgrade_charge: SKIP,
                   downgrade_credit: SKIP, created_at: SKIP, updated_at: SKIP,
                   archived_at: SKIP, hide_date_range_on_invoice: SKIP,
                   allow_fractional_quantities: SKIP, item_category: SKIP,
                   use_site_exchange_rate: SKIP, accounting_code: SKIP,
                   event_based_billing_metric_id: SKIP, interval: SKIP,
                   interval_unit: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @handle = handle unless handle == SKIP
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @unit_name = unit_name unless unit_name == SKIP
      @unit_price = unit_price unless unit_price == SKIP
      @product_family_id = product_family_id unless product_family_id == SKIP
      @product_family_name = product_family_name unless product_family_name == SKIP
      @price_per_unit_in_cents = price_per_unit_in_cents unless price_per_unit_in_cents == SKIP
      @kind = kind unless kind == SKIP
      @archived = archived unless archived == SKIP
      @taxable = taxable unless taxable == SKIP
      @description = description unless description == SKIP
      @default_price_point_id = default_price_point_id unless default_price_point_id == SKIP
      @overage_prices = overage_prices unless overage_prices == SKIP
      @prices = prices unless prices == SKIP
      @price_point_count = price_point_count unless price_point_count == SKIP
      @price_points_url = price_points_url unless price_points_url == SKIP
      @default_price_point_name = default_price_point_name unless default_price_point_name == SKIP
      @tax_code = tax_code unless tax_code == SKIP
      @recurring = recurring unless recurring == SKIP
      @upgrade_charge = upgrade_charge unless upgrade_charge == SKIP
      @downgrade_credit = downgrade_credit unless downgrade_credit == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @archived_at = archived_at unless archived_at == SKIP
      unless hide_date_range_on_invoice == SKIP
        @hide_date_range_on_invoice =
          hide_date_range_on_invoice
      end
      unless allow_fractional_quantities == SKIP
        @allow_fractional_quantities =
          allow_fractional_quantities
      end
      @item_category = item_category unless item_category == SKIP
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
      @accounting_code = accounting_code unless accounting_code == SKIP
      unless event_based_billing_metric_id == SKIP
        @event_based_billing_metric_id =
          event_based_billing_metric_id
      end
      @interval = interval unless interval == SKIP
      @interval_unit = interval_unit unless interval_unit == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : SKIP
      unit_name = hash.key?('unit_name') ? hash['unit_name'] : SKIP
      unit_price = hash.key?('unit_price') ? hash['unit_price'] : SKIP
      product_family_id =
        hash.key?('product_family_id') ? hash['product_family_id'] : SKIP
      product_family_name =
        hash.key?('product_family_name') ? hash['product_family_name'] : SKIP
      price_per_unit_in_cents =
        hash.key?('price_per_unit_in_cents') ? hash['price_per_unit_in_cents'] : SKIP
      kind = hash.key?('kind') ? hash['kind'] : SKIP
      archived = hash.key?('archived') ? hash['archived'] : SKIP
      taxable = hash.key?('taxable') ? hash['taxable'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      default_price_point_id =
        hash.key?('default_price_point_id') ? hash['default_price_point_id'] : SKIP
      # Parameter is an array, so we need to iterate through it
      overage_prices = nil
      unless hash['overage_prices'].nil?
        overage_prices = []
        hash['overage_prices'].each do |structure|
          overage_prices << (ComponentPrice.from_hash(structure) if structure)
        end
      end

      overage_prices = SKIP unless hash.key?('overage_prices')
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (ComponentPrice.from_hash(structure) if structure)
        end
      end

      prices = SKIP unless hash.key?('prices')
      price_point_count =
        hash.key?('price_point_count') ? hash['price_point_count'] : SKIP
      price_points_url =
        hash.key?('price_points_url') ? hash['price_points_url'] : SKIP
      default_price_point_name =
        hash.key?('default_price_point_name') ? hash['default_price_point_name'] : SKIP
      tax_code = hash.key?('tax_code') ? hash['tax_code'] : SKIP
      recurring = hash.key?('recurring') ? hash['recurring'] : SKIP
      upgrade_charge =
        hash.key?('upgrade_charge') ? hash['upgrade_charge'] : SKIP
      downgrade_credit =
        hash.key?('downgrade_credit') ? hash['downgrade_credit'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   else
                     SKIP
                   end
      archived_at = if hash.key?('archived_at')
                      (DateTimeHelper.from_rfc3339(hash['archived_at']) if hash['archived_at'])
                    else
                      SKIP
                    end
      hide_date_range_on_invoice =
        hash.key?('hide_date_range_on_invoice') ? hash['hide_date_range_on_invoice'] : SKIP
      allow_fractional_quantities =
        hash.key?('allow_fractional_quantities') ? hash['allow_fractional_quantities'] : SKIP
      item_category = hash.key?('item_category') ? hash['item_category'] : SKIP
      use_site_exchange_rate =
        hash.key?('use_site_exchange_rate') ? hash['use_site_exchange_rate'] : SKIP
      accounting_code =
        hash.key?('accounting_code') ? hash['accounting_code'] : SKIP
      event_based_billing_metric_id =
        hash.key?('event_based_billing_metric_id') ? hash['event_based_billing_metric_id'] : SKIP
      interval = hash.key?('interval') ? hash['interval'] : SKIP
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Component.new(id: id,
                    name: name,
                    handle: handle,
                    pricing_scheme: pricing_scheme,
                    unit_name: unit_name,
                    unit_price: unit_price,
                    product_family_id: product_family_id,
                    product_family_name: product_family_name,
                    price_per_unit_in_cents: price_per_unit_in_cents,
                    kind: kind,
                    archived: archived,
                    taxable: taxable,
                    description: description,
                    default_price_point_id: default_price_point_id,
                    overage_prices: overage_prices,
                    prices: prices,
                    price_point_count: price_point_count,
                    price_points_url: price_points_url,
                    default_price_point_name: default_price_point_name,
                    tax_code: tax_code,
                    recurring: recurring,
                    upgrade_charge: upgrade_charge,
                    downgrade_credit: downgrade_credit,
                    created_at: created_at,
                    updated_at: updated_at,
                    archived_at: archived_at,
                    hide_date_range_on_invoice: hide_date_range_on_invoice,
                    allow_fractional_quantities: allow_fractional_quantities,
                    item_category: item_category,
                    use_site_exchange_rate: use_site_exchange_rate,
                    accounting_code: accounting_code,
                    event_based_billing_metric_id: event_based_billing_metric_id,
                    interval: interval,
                    interval_unit: interval_unit,
                    additional_properties: additional_properties)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    def to_custom_archived_at
      DateTimeHelper.to_rfc3339(archived_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, name: #{@name}, handle: #{@handle}, pricing_scheme:"\
      " #{@pricing_scheme}, unit_name: #{@unit_name}, unit_price: #{@unit_price},"\
      " product_family_id: #{@product_family_id}, product_family_name: #{@product_family_name},"\
      " price_per_unit_in_cents: #{@price_per_unit_in_cents}, kind: #{@kind}, archived:"\
      " #{@archived}, taxable: #{@taxable}, description: #{@description}, default_price_point_id:"\
      " #{@default_price_point_id}, overage_prices: #{@overage_prices}, prices: #{@prices},"\
      " price_point_count: #{@price_point_count}, price_points_url: #{@price_points_url},"\
      " default_price_point_name: #{@default_price_point_name}, tax_code: #{@tax_code}, recurring:"\
      " #{@recurring}, upgrade_charge: #{@upgrade_charge}, downgrade_credit: #{@downgrade_credit},"\
      " created_at: #{@created_at}, updated_at: #{@updated_at}, archived_at: #{@archived_at},"\
      " hide_date_range_on_invoice: #{@hide_date_range_on_invoice}, allow_fractional_quantities:"\
      " #{@allow_fractional_quantities}, item_category: #{@item_category}, use_site_exchange_rate:"\
      " #{@use_site_exchange_rate}, accounting_code: #{@accounting_code},"\
      " event_based_billing_metric_id: #{@event_based_billing_metric_id}, interval: #{@interval},"\
      " interval_unit: #{@interval_unit}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, name: #{@name.inspect}, handle: #{@handle.inspect},"\
      " pricing_scheme: #{@pricing_scheme.inspect}, unit_name: #{@unit_name.inspect}, unit_price:"\
      " #{@unit_price.inspect}, product_family_id: #{@product_family_id.inspect},"\
      " product_family_name: #{@product_family_name.inspect}, price_per_unit_in_cents:"\
      " #{@price_per_unit_in_cents.inspect}, kind: #{@kind.inspect}, archived:"\
      " #{@archived.inspect}, taxable: #{@taxable.inspect}, description: #{@description.inspect},"\
      " default_price_point_id: #{@default_price_point_id.inspect}, overage_prices:"\
      " #{@overage_prices.inspect}, prices: #{@prices.inspect}, price_point_count:"\
      " #{@price_point_count.inspect}, price_points_url: #{@price_points_url.inspect},"\
      " default_price_point_name: #{@default_price_point_name.inspect}, tax_code:"\
      " #{@tax_code.inspect}, recurring: #{@recurring.inspect}, upgrade_charge:"\
      " #{@upgrade_charge.inspect}, downgrade_credit: #{@downgrade_credit.inspect}, created_at:"\
      " #{@created_at.inspect}, updated_at: #{@updated_at.inspect}, archived_at:"\
      " #{@archived_at.inspect}, hide_date_range_on_invoice:"\
      " #{@hide_date_range_on_invoice.inspect}, allow_fractional_quantities:"\
      " #{@allow_fractional_quantities.inspect}, item_category: #{@item_category.inspect},"\
      " use_site_exchange_rate: #{@use_site_exchange_rate.inspect}, accounting_code:"\
      " #{@accounting_code.inspect}, event_based_billing_metric_id:"\
      " #{@event_based_billing_metric_id.inspect}, interval: #{@interval.inspect}, interval_unit:"\
      " #{@interval_unit.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
