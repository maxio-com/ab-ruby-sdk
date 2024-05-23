# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceLineItem1 Model.
  class InvoiceLineItem1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier for the line item.  Useful when cross-referencing the
    # line against individual discounts in the `discounts` or `taxes` lists.
    # @return [String]
    attr_accessor :uid

    # A short descriptor for the charge or item represented by this line.
    # @return [String]
    attr_accessor :title

    # Detailed description for the charge or item represented by this line.  May
    # include proration details in plain text.
    # Note: this string may contain line breaks that are hints for the best
    # display format on the invoice.
    # @return [String]
    attr_accessor :description

    # The quantity or count of units billed by the line item.
    # This is a decimal number represented as a string. (See "About Decimal
    # Numbers".)
    # @return [String]
    attr_accessor :quantity

    # The price per unit for the line item.
    # When tiered pricing was used (i.e. not every unit was actually priced at
    # the same price) this will be the blended average cost per unit and the
    # `tiered_unit_price` field will be set to `true`.
    # @return [String]
    attr_accessor :unit_price

    # The line subtotal, generally calculated as `quantity * unit_price`. This
    # is the canonical amount of record for the line - when rounding differences
    # are in play, `subtotal_amount` takes precedence over the value derived
    # from `quantity * unit_price` (which may not have the proper precision to
    # exactly equal this amount).
    # @return [String]
    attr_accessor :subtotal_amount

    # The approximate discount applied to just this line.
    # The value is approximated in cases where rounding errors make it difficult
    # to apportion exactly a total discount among many lines. Several lines may
    # have been summed prior to applying the discount to arrive at
    # `discount_amount` for the invoice - backing that out to the discount on a
    # single line may introduce rounding or precision errors.
    # @return [String]
    attr_accessor :discount_amount

    # The approximate tax applied to just this line.
    # The value is approximated in cases where rounding errors make it difficult
    # to apportion exactly a total tax among many lines. Several lines may have
    # been summed prior to applying the tax rate to arrive at `tax_amount` for
    # the invoice - backing that out to the tax on a single line may introduce
    # rounding or precision errors.
    # @return [String]
    attr_accessor :tax_amount

    # The non-canonical total amount for the line.
    # `subtotal_amount` is the canonical amount for a line. The invoice
    # `total_amount` is derived from the sum of the line `subtotal_amount`s and
    # discounts or taxes applied thereafter.  Therefore, due to rounding or
    # precision errors, the sum of line `total_amount`s may not equal the
    # invoice `total_amount`.
    # @return [String]
    attr_accessor :total_amount

    # When `true`, indicates that the actual pricing scheme for the line was
    # tiered, so the `unit_price` shown is the blended average for all units.
    # @return [TrueClass | FalseClass]
    attr_accessor :tiered_unit_price

    # Start date for the period covered by this line. The format is
    # `"YYYY-MM-DD"`.
    # * For periodic charges paid in advance, this date will match the billing
    # date, and the end date will be in the future.
    # * For periodic charges paid in arrears (e.g. metered charges), this date
    # will be the date of the previous billing, and the end date will be the
    # current billing date.
    # * For non-periodic charges, this date and the end date will match.
    # @return [Date]
    attr_accessor :period_range_start

    # End date for the period covered by this line. The format is
    # `"YYYY-MM-DD"`.
    # * For periodic charges paid in advance, this date will match the next
    # (future) billing date.
    # * For periodic charges paid in arrears (e.g. metered charges), this date
    # will be the date of the current billing date.
    # * For non-periodic charges, this date and the start date will match.
    # @return [Date]
    attr_accessor :period_range_end

    # End date for the period covered by this line. The format is
    # `"YYYY-MM-DD"`.
    # * For periodic charges paid in advance, this date will match the next
    # (future) billing date.
    # * For periodic charges paid in arrears (e.g. metered charges), this date
    # will be the date of the current billing date.
    # * For non-periodic charges, this date and the start date will match.
    # @return [Integer]
    attr_accessor :transaction_id

    # The ID of the product subscribed when the charge was made.
    # This may be set even for component charges, so true product-only
    # (non-component) charges will also have a nil `component_id`.
    # @return [Integer]
    attr_accessor :product_id

    # The version of the product subscribed when the charge was made.
    # @return [Integer]
    attr_accessor :product_version

    # The ID of the component being billed. Will be `nil` for non-component
    # charges.
    # @return [Integer]
    attr_accessor :component_id

    # The price point ID of the component being billed. Will be `nil` for
    # non-component charges.
    # @return [Integer]
    attr_accessor :price_point_id

    # The price point ID of the component being billed. Will be `nil` for
    # non-component charges.
    # @return [TrueClass | FalseClass]
    attr_accessor :hide

    # The price point ID of the component being billed. Will be `nil` for
    # non-component charges.
    # @return [ComponentCostData1]
    attr_accessor :component_cost_data

    # The price point ID of the line item's product
    # @return [Integer]
    attr_accessor :product_price_point_id

    # The price point ID of the line item's product
    # @return [TrueClass | FalseClass]
    attr_accessor :custom_item

    # The price point ID of the line item's product
    # @return [String]
    attr_accessor :kind

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['title'] = 'title'
      @_hash['description'] = 'description'
      @_hash['quantity'] = 'quantity'
      @_hash['unit_price'] = 'unit_price'
      @_hash['subtotal_amount'] = 'subtotal_amount'
      @_hash['discount_amount'] = 'discount_amount'
      @_hash['tax_amount'] = 'tax_amount'
      @_hash['total_amount'] = 'total_amount'
      @_hash['tiered_unit_price'] = 'tiered_unit_price'
      @_hash['period_range_start'] = 'period_range_start'
      @_hash['period_range_end'] = 'period_range_end'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['product_id'] = 'product_id'
      @_hash['product_version'] = 'product_version'
      @_hash['component_id'] = 'component_id'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['hide'] = 'hide'
      @_hash['component_cost_data'] = 'component_cost_data'
      @_hash['product_price_point_id'] = 'product_price_point_id'
      @_hash['custom_item'] = 'custom_item'
      @_hash['kind'] = 'kind'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        title
        description
        quantity
        unit_price
        subtotal_amount
        discount_amount
        tax_amount
        total_amount
        tiered_unit_price
        period_range_start
        period_range_end
        transaction_id
        product_id
        product_version
        component_id
        price_point_id
        hide
        component_cost_data
        product_price_point_id
        custom_item
        kind
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        product_id
        product_version
        component_id
        price_point_id
        product_price_point_id
      ]
    end

    def initialize(uid = SKIP,
                   title = SKIP,
                   description = SKIP,
                   quantity = SKIP,
                   unit_price = SKIP,
                   subtotal_amount = SKIP,
                   discount_amount = SKIP,
                   tax_amount = SKIP,
                   total_amount = SKIP,
                   tiered_unit_price = SKIP,
                   period_range_start = SKIP,
                   period_range_end = SKIP,
                   transaction_id = SKIP,
                   product_id = SKIP,
                   product_version = SKIP,
                   component_id = SKIP,
                   price_point_id = SKIP,
                   hide = SKIP,
                   component_cost_data = SKIP,
                   product_price_point_id = SKIP,
                   custom_item = SKIP,
                   kind = SKIP,
                   additional_properties = {})
      @uid = uid unless uid == SKIP
      @title = title unless title == SKIP
      @description = description unless description == SKIP
      @quantity = quantity unless quantity == SKIP
      @unit_price = unit_price unless unit_price == SKIP
      @subtotal_amount = subtotal_amount unless subtotal_amount == SKIP
      @discount_amount = discount_amount unless discount_amount == SKIP
      @tax_amount = tax_amount unless tax_amount == SKIP
      @total_amount = total_amount unless total_amount == SKIP
      @tiered_unit_price = tiered_unit_price unless tiered_unit_price == SKIP
      @period_range_start = period_range_start unless period_range_start == SKIP
      @period_range_end = period_range_end unless period_range_end == SKIP
      @transaction_id = transaction_id unless transaction_id == SKIP
      @product_id = product_id unless product_id == SKIP
      @product_version = product_version unless product_version == SKIP
      @component_id = component_id unless component_id == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @hide = hide unless hide == SKIP
      @component_cost_data = component_cost_data unless component_cost_data == SKIP
      @product_price_point_id = product_price_point_id unless product_price_point_id == SKIP
      @custom_item = custom_item unless custom_item == SKIP
      @kind = kind unless kind == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      title = hash.key?('title') ? hash['title'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP
      unit_price = hash.key?('unit_price') ? hash['unit_price'] : SKIP
      subtotal_amount =
        hash.key?('subtotal_amount') ? hash['subtotal_amount'] : SKIP
      discount_amount =
        hash.key?('discount_amount') ? hash['discount_amount'] : SKIP
      tax_amount = hash.key?('tax_amount') ? hash['tax_amount'] : SKIP
      total_amount = hash.key?('total_amount') ? hash['total_amount'] : SKIP
      tiered_unit_price =
        hash.key?('tiered_unit_price') ? hash['tiered_unit_price'] : SKIP
      period_range_start =
        hash.key?('period_range_start') ? hash['period_range_start'] : SKIP
      period_range_end =
        hash.key?('period_range_end') ? hash['period_range_end'] : SKIP
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
      product_version =
        hash.key?('product_version') ? hash['product_version'] : SKIP
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      hide = hash.key?('hide') ? hash['hide'] : SKIP
      component_cost_data = ComponentCostData1.from_hash(hash['component_cost_data']) if
        hash['component_cost_data']
      product_price_point_id =
        hash.key?('product_price_point_id') ? hash['product_price_point_id'] : SKIP
      custom_item = hash.key?('custom_item') ? hash['custom_item'] : SKIP
      kind = hash.key?('kind') ? hash['kind'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      InvoiceLineItem1.new(uid,
                           title,
                           description,
                           quantity,
                           unit_price,
                           subtotal_amount,
                           discount_amount,
                           tax_amount,
                           total_amount,
                           tiered_unit_price,
                           period_range_start,
                           period_range_end,
                           transaction_id,
                           product_id,
                           product_version,
                           component_id,
                           price_point_id,
                           hide,
                           component_cost_data,
                           product_price_point_id,
                           custom_item,
                           kind,
                           hash)
    end
  end
end
