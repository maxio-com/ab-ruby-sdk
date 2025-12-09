# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # One of the following: Business Software, Consumer Software, Digital
  # Services, Physical Goods, Other
  class ItemCategory
    ITEM_CATEGORY = [
      # TODO: Write general description for ENUM_BUSINESS_SOFTWARE
      ENUM_BUSINESS_SOFTWARE = 'Business Software'.freeze,

      # TODO: Write general description for ENUM_CONSUMER_SOFTWARE
      ENUM_CONSUMER_SOFTWARE = 'Consumer Software'.freeze,

      # TODO: Write general description for ENUM_DIGITAL_SERVICES
      ENUM_DIGITAL_SERVICES = 'Digital Services'.freeze,

      # TODO: Write general description for ENUM_PHYSICAL_GOODS
      ENUM_PHYSICAL_GOODS = 'Physical Goods'.freeze,

      # TODO: Write general description for OTHER
      OTHER = 'Other'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ITEM_CATEGORY.include?(value)
    end

    def self.from_value(value, default_value = ENUM_BUSINESS_SOFTWARE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'enum_business_software' then ENUM_BUSINESS_SOFTWARE
      when 'enum_consumer_software' then ENUM_CONSUMER_SOFTWARE
      when 'enum_digital_services' then ENUM_DIGITAL_SERVICES
      when 'enum_physical_goods' then ENUM_PHYSICAL_GOODS
      when 'other' then OTHER
      else
        default_value
      end
    end
  end
end
