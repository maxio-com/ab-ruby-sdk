# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpdateComponent Model.
  class UpdateComponent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :handle

    # The name of the Component, suitable for display on statements. i.e. Text
    # Messages.
    # @return [String]
    attr_accessor :name

    # The description of the component.
    # @return [String]
    attr_accessor :description

    # The description of the component.
    # @return [String]
    attr_accessor :accounting_code

    # Boolean flag describing whether a component is taxable or not.
    # @return [TrueClass | FalseClass]
    attr_accessor :taxable

    # A string representing the tax code related to the component type. This is
    # especially important when using the Avalara service to tax based on
    # locale. This attribute has a max length of 10 characters.
    # @return [String]
    attr_accessor :tax_code

    # One of the following: Business Software, Consumer Software, Digital
    # Services, Physical Goods, Other
    # @return [ItemCategory]
    attr_accessor :item_category

    # One of the following: Business Software, Consumer Software, Digital
    # Services, Physical Goods, Other
    # @return [TrueClass | FalseClass]
    attr_accessor :display_on_hosted_page

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [CreditType]
    attr_accessor :upgrade_charge

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['handle'] = 'handle'
      @_hash['name'] = 'name'
      @_hash['description'] = 'description'
      @_hash['accounting_code'] = 'accounting_code'
      @_hash['taxable'] = 'taxable'
      @_hash['tax_code'] = 'tax_code'
      @_hash['item_category'] = 'item_category'
      @_hash['display_on_hosted_page'] = 'display_on_hosted_page'
      @_hash['upgrade_charge'] = 'upgrade_charge'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        handle
        name
        description
        accounting_code
        taxable
        tax_code
        item_category
        display_on_hosted_page
        upgrade_charge
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        description
        accounting_code
        tax_code
        item_category
        upgrade_charge
      ]
    end

    def initialize(handle: SKIP, name: SKIP, description: SKIP,
                   accounting_code: SKIP, taxable: SKIP, tax_code: SKIP,
                   item_category: SKIP, display_on_hosted_page: SKIP,
                   upgrade_charge: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @handle = handle unless handle == SKIP
      @name = name unless name == SKIP
      @description = description unless description == SKIP
      @accounting_code = accounting_code unless accounting_code == SKIP
      @taxable = taxable unless taxable == SKIP
      @tax_code = tax_code unless tax_code == SKIP
      @item_category = item_category unless item_category == SKIP
      @display_on_hosted_page = display_on_hosted_page unless display_on_hosted_page == SKIP
      @upgrade_charge = upgrade_charge unless upgrade_charge == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      accounting_code =
        hash.key?('accounting_code') ? hash['accounting_code'] : SKIP
      taxable = hash.key?('taxable') ? hash['taxable'] : SKIP
      tax_code = hash.key?('tax_code') ? hash['tax_code'] : SKIP
      item_category = hash.key?('item_category') ? hash['item_category'] : SKIP
      display_on_hosted_page =
        hash.key?('display_on_hosted_page') ? hash['display_on_hosted_page'] : SKIP
      upgrade_charge =
        hash.key?('upgrade_charge') ? hash['upgrade_charge'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdateComponent.new(handle: handle,
                          name: name,
                          description: description,
                          accounting_code: accounting_code,
                          taxable: taxable,
                          tax_code: tax_code,
                          item_category: item_category,
                          display_on_hosted_page: display_on_hosted_page,
                          upgrade_charge: upgrade_charge,
                          additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} handle: #{@handle}, name: #{@name}, description: #{@description},"\
      " accounting_code: #{@accounting_code}, taxable: #{@taxable}, tax_code: #{@tax_code},"\
      " item_category: #{@item_category}, display_on_hosted_page: #{@display_on_hosted_page},"\
      " upgrade_charge: #{@upgrade_charge}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} handle: #{@handle.inspect}, name: #{@name.inspect}, description:"\
      " #{@description.inspect}, accounting_code: #{@accounting_code.inspect}, taxable:"\
      " #{@taxable.inspect}, tax_code: #{@tax_code.inspect}, item_category:"\
      " #{@item_category.inspect}, display_on_hosted_page: #{@display_on_hosted_page.inspect},"\
      " upgrade_charge: #{@upgrade_charge.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
