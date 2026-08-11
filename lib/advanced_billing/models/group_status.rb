# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # group_status.
  class GroupStatus
    GROUP_STATUS = [
      # TODO: Write general description for UNGROUPED
      UNGROUPED = 'ungrouped'.freeze,

      # TODO: Write general description for GROUPED
      GROUPED = 'grouped'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      GROUP_STATUS.include?(value)
    end

    def self.from_value(value, default_value = UNGROUPED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'ungrouped' then UNGROUPED
      when 'grouped' then GROUPED
      else
        default_value
      end
    end
  end
end
