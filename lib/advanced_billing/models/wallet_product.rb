# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WalletProduct Model.
  class WalletProduct < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # The name of the unit the Wallet Product's usage is measured in, for
    # example `tokens`.
    # @return [String]
    attr_accessor :unit_name

    # The name of the unit the Wallet Product's usage is measured in, for
    # example `tokens`.
    # @return [String]
    attr_accessor :handle

    # The name of the unit the Wallet Product's usage is measured in, for
    # example `tokens`.
    # @return [String]
    attr_accessor :description

    # The name of the unit the Wallet Product's usage is measured in, for
    # example `tokens`.
    # @return [TrueClass | FalseClass]
    attr_accessor :taxable

    # The name of the unit the Wallet Product's usage is measured in, for
    # example `tokens`.
    # @return [String]
    attr_accessor :tax_code

    # The name of the unit the Wallet Product's usage is measured in, for
    # example `tokens`.
    # @return [String]
    attr_accessor :accounting_code

    # One of the following: Business Software, Consumer Software, Digital
    # Services, Physical Goods, Other
    # @return [ItemCategory]
    attr_accessor :item_category

    # Creates one price point for the Wallet Product in the same call. Ignored
    # if `price_points` is also sent.
    # @return [WalletProductPricePointAttributes]
    attr_accessor :price_point

    # Creates several price points for the Wallet Product in the same call,
    # winning over `price_point` if both are sent. The first price point created
    # becomes the Wallet Product's default. The whole call is one transaction:
    # if any price point in the array fails validation, nothing is created,
    # including the Wallet Product itself.
    # @return [Array[WalletProductPricePointAttributes]]
    attr_accessor :price_points

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['unit_name'] = 'unit_name'
      @_hash['handle'] = 'handle'
      @_hash['description'] = 'description'
      @_hash['taxable'] = 'taxable'
      @_hash['tax_code'] = 'tax_code'
      @_hash['accounting_code'] = 'accounting_code'
      @_hash['item_category'] = 'item_category'
      @_hash['price_point'] = 'price_point'
      @_hash['price_points'] = 'price_points'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        handle
        description
        taxable
        tax_code
        accounting_code
        item_category
        price_point
        price_points
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        description
        tax_code
        accounting_code
        item_category
      ]
    end

    def initialize(name:, unit_name:, handle: SKIP, description: SKIP,
                   taxable: SKIP, tax_code: SKIP, accounting_code: SKIP,
                   item_category: SKIP, price_point: SKIP, price_points: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @name = name
      @unit_name = unit_name
      @handle = handle unless handle == SKIP
      @description = description unless description == SKIP
      @taxable = taxable unless taxable == SKIP
      @tax_code = tax_code unless tax_code == SKIP
      @accounting_code = accounting_code unless accounting_code == SKIP
      @item_category = item_category unless item_category == SKIP
      @price_point = price_point unless price_point == SKIP
      @price_points = price_points unless price_points == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      unit_name = hash.key?('unit_name') ? hash['unit_name'] : nil
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      taxable = hash.key?('taxable') ? hash['taxable'] : SKIP
      tax_code = hash.key?('tax_code') ? hash['tax_code'] : SKIP
      accounting_code =
        hash.key?('accounting_code') ? hash['accounting_code'] : SKIP
      item_category = hash.key?('item_category') ? hash['item_category'] : SKIP
      price_point = WalletProductPricePointAttributes.from_hash(hash['price_point']) if
        hash['price_point']
      # Parameter is an array, so we need to iterate through it
      price_points = nil
      unless hash['price_points'].nil?
        price_points = []
        hash['price_points'].each do |structure|
          price_points << (WalletProductPricePointAttributes.from_hash(structure) if structure)
        end
      end

      price_points = SKIP unless hash.key?('price_points')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletProduct.new(name: name,
                        unit_name: unit_name,
                        handle: handle,
                        description: description,
                        taxable: taxable,
                        tax_code: tax_code,
                        accounting_code: accounting_code,
                        item_category: item_category,
                        price_point: price_point,
                        price_points: price_points,
                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, unit_name: #{@unit_name}, handle: #{@handle}, description:"\
      " #{@description}, taxable: #{@taxable}, tax_code: #{@tax_code}, accounting_code:"\
      " #{@accounting_code}, item_category: #{@item_category}, price_point: #{@price_point},"\
      " price_points: #{@price_points}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, unit_name: #{@unit_name.inspect}, handle:"\
      " #{@handle.inspect}, description: #{@description.inspect}, taxable: #{@taxable.inspect},"\
      " tax_code: #{@tax_code.inspect}, accounting_code: #{@accounting_code.inspect},"\
      " item_category: #{@item_category.inspect}, price_point: #{@price_point.inspect},"\
      " price_points: #{@price_points.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
