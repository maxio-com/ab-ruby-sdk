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
  end
end
