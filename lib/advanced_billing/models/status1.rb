# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # status1.
  class Status1
    STATUS1 = [
      # TODO: Write general description for ACTIVE
      ACTIVE = 'active'.freeze,

      # TODO: Write general description for ARCHIVED
      ARCHIVED = 'archived'.freeze,

      # TODO: Write general description for ALL
      ALL = 'all'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      STATUS1.include?(value)
    end

    def self.from_value(value, default_value = ACTIVE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'active' then ACTIVE
      when 'archived' then ARCHIVED
      when 'all' then ALL
      else
        default_value
      end
    end
  end
end
