# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # status.
  class Status
    STATUS = [
      # TODO: Write general description for DRAFT
      DRAFT = 'draft'.freeze,

      # TODO: Write general description for SCHEDULED
      SCHEDULED = 'scheduled'.freeze,

      # TODO: Write general description for PENDING
      PENDING = 'pending'.freeze,

      # TODO: Write general description for CANCELED
      CANCELED = 'canceled'.freeze,

      # TODO: Write general description for ACTIVE
      ACTIVE = 'active'.freeze,

      # TODO: Write general description for FULFILLED
      FULFILLED = 'fulfilled'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      STATUS.include?(value)
    end

    def self.from_value(value, default_value = DRAFT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'draft' then DRAFT
      when 'scheduled' then SCHEDULED
      when 'pending' then PENDING
      when 'canceled' then CANCELED
      when 'active' then ACTIVE
      when 'fulfilled' then FULFILLED
      else
        default_value
      end
    end
  end
end
