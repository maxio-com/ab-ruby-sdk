# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WalletProduct1 Model.
  class WalletProduct1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :taxable

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :accounting_code

    # One of the following: Business Software, Consumer Software, Digital
    # Services, Physical Goods, Other
    # @return [ItemCategory]
    attr_accessor :item_category

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['description'] = 'description'
      @_hash['taxable'] = 'taxable'
      @_hash['tax_code'] = 'tax_code'
      @_hash['accounting_code'] = 'accounting_code'
      @_hash['item_category'] = 'item_category'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        description
        taxable
        tax_code
        accounting_code
        item_category
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

    def initialize(name: SKIP, description: SKIP, taxable: SKIP, tax_code: SKIP,
                   accounting_code: SKIP, item_category: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @name = name unless name == SKIP
      @description = description unless description == SKIP
      @taxable = taxable unless taxable == SKIP
      @tax_code = tax_code unless tax_code == SKIP
      @accounting_code = accounting_code unless accounting_code == SKIP
      @item_category = item_category unless item_category == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      taxable = hash.key?('taxable') ? hash['taxable'] : SKIP
      tax_code = hash.key?('tax_code') ? hash['tax_code'] : SKIP
      accounting_code =
        hash.key?('accounting_code') ? hash['accounting_code'] : SKIP
      item_category = hash.key?('item_category') ? hash['item_category'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletProduct1.new(name: name,
                         description: description,
                         taxable: taxable,
                         tax_code: tax_code,
                         accounting_code: accounting_code,
                         item_category: item_category,
                         additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, description: #{@description}, taxable: #{@taxable},"\
      " tax_code: #{@tax_code}, accounting_code: #{@accounting_code}, item_category:"\
      " #{@item_category}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, description: #{@description.inspect}, taxable:"\
      " #{@taxable.inspect}, tax_code: #{@tax_code.inspect}, accounting_code:"\
      " #{@accounting_code.inspect}, item_category: #{@item_category.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
