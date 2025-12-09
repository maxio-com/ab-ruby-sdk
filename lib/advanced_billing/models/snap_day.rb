# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # SnapDay.
  class SnapDay
    SNAP_DAY = [
      # TODO: Write general description for ENUM_END
      ENUM_END = 'end'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SNAP_DAY.include?(value)
    end

    def self.from_value(value, default_value = ENUM_END)
      return default_value if value.nil?

      default_value
    end
  end
end
