# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Auto Invite.
  class AutoInvite
    AUTO_INVITE = [
      # Do not send the invitation email.
      NO = 0,

      # Automatically send the invitation email.
      YES = 1
    ].freeze

    def self.validate(value)
      return false if value.nil?

      AUTO_INVITE.include?(value)
    end

    def self.from_value(value, default_value = NO)
      return default_value if value.nil?

      str = value.to_s.strip
      if str.match?(/\A\d+\z/)
        num = str.to_i
        return num if AUTO_INVITE.include?(num)

        return default_value
      end

      case str.downcase
      when 'no' then NO
      when 'yes' then YES
      else
        default_value
      end
    end
  end
end
