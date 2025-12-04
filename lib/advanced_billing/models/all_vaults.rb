# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The vault that stores the payment profile with the provided `vault_token`.
  # Use `bogus` for testing.
  class AllVaults
    ALL_VAULTS = [
      # TODO: Write general description for ADYEN
      ADYEN = 'adyen'.freeze,

      # TODO: Write general description for AUTHORIZENET
      AUTHORIZENET = 'authorizenet'.freeze,

      # TODO: Write general description for BEANSTREAM
      BEANSTREAM = 'beanstream'.freeze,

      # TODO: Write general description for BLUE_SNAP
      BLUE_SNAP = 'blue_snap'.freeze,

      # TODO: Write general description for BOGUS
      BOGUS = 'bogus'.freeze,

      # TODO: Write general description for BRAINTREE1
      BRAINTREE1 = 'braintree1'.freeze,

      # TODO: Write general description for BRAINTREE_BLUE
      BRAINTREE_BLUE = 'braintree_blue'.freeze,

      # TODO: Write general description for CHECKOUT
      CHECKOUT = 'checkout'.freeze,

      # TODO: Write general description for CYBERSOURCE
      CYBERSOURCE = 'cybersource'.freeze,

      # TODO: Write general description for ELAVON
      ELAVON = 'elavon'.freeze,

      # TODO: Write general description for EWAY
      EWAY = 'eway'.freeze,

      # TODO: Write general description for EWAY_RAPID
      EWAY_RAPID = 'eway_rapid'.freeze,

      # TODO: Write general description for EWAY_RAPID_STD
      EWAY_RAPID_STD = 'eway_rapid_std'.freeze,

      # TODO: Write general description for FIRSTDATA
      FIRSTDATA = 'firstdata'.freeze,

      # TODO: Write general description for FORTE
      FORTE = 'forte'.freeze,

      # TODO: Write general description for GOCARDLESS
      GOCARDLESS = 'gocardless'.freeze,

      # TODO: Write general description for LITLE
      LITLE = 'litle'.freeze,

      # TODO: Write general description for MAXIO_PAYMENTS
      MAXIO_PAYMENTS = 'maxio_payments'.freeze,

      # TODO: Write general description for MAXP
      MAXP = 'maxp'.freeze,

      # TODO: Write general description for MODUSLINK
      MODUSLINK = 'moduslink'.freeze,

      # TODO: Write general description for MONERIS
      MONERIS = 'moneris'.freeze,

      # TODO: Write general description for NMI
      NMI = 'nmi'.freeze,

      # TODO: Write general description for ORBITAL
      ORBITAL = 'orbital'.freeze,

      # TODO: Write general description for PAYMENT_EXPRESS
      PAYMENT_EXPRESS = 'payment_express'.freeze,

      # TODO: Write general description for PAYMILL
      PAYMILL = 'paymill'.freeze,

      # TODO: Write general description for PAYPAL
      PAYPAL = 'paypal'.freeze,

      # TODO: Write general description for PAYPAL_COMPLETE
      PAYPAL_COMPLETE = 'paypal_complete'.freeze,

      # TODO: Write general description for PIN
      PIN = 'pin'.freeze,

      # TODO: Write general description for SQUARE
      SQUARE = 'square'.freeze,

      # TODO: Write general description for STRIPE
      STRIPE = 'stripe'.freeze,

      # TODO: Write general description for STRIPE_CONNECT
      STRIPE_CONNECT = 'stripe_connect'.freeze,

      # TODO: Write general description for TRUST_COMMERCE
      TRUST_COMMERCE = 'trust_commerce'.freeze,

      # TODO: Write general description for UNIPAAS
      UNIPAAS = 'unipaas'.freeze,

      # TODO: Write general description for WIRECARD
      WIRECARD = 'wirecard'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ALL_VAULTS.include?(value)
    end

    def self.from_value(value, default_value = ADYEN)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'adyen' then ADYEN
      when 'authorizenet' then AUTHORIZENET
      when 'beanstream' then BEANSTREAM
      when 'blue_snap' then BLUE_SNAP
      when 'bogus' then BOGUS
      when 'braintree1' then BRAINTREE1
      when 'braintree_blue' then BRAINTREE_BLUE
      when 'checkout' then CHECKOUT
      when 'cybersource' then CYBERSOURCE
      when 'elavon' then ELAVON
      when 'eway' then EWAY
      when 'eway_rapid' then EWAY_RAPID
      when 'eway_rapid_std' then EWAY_RAPID_STD
      when 'firstdata' then FIRSTDATA
      when 'forte' then FORTE
      when 'gocardless' then GOCARDLESS
      when 'litle' then LITLE
      when 'maxio_payments' then MAXIO_PAYMENTS
      when 'maxp' then MAXP
      when 'moduslink' then MODUSLINK
      when 'moneris' then MONERIS
      when 'nmi' then NMI
      when 'orbital' then ORBITAL
      when 'payment_express' then PAYMENT_EXPRESS
      when 'paymill' then PAYMILL
      when 'paypal' then PAYPAL
      when 'paypal_complete' then PAYPAL_COMPLETE
      when 'pin' then PIN
      when 'square' then SQUARE
      when 'stripe' then STRIPE
      when 'stripe_connect' then STRIPE_CONNECT
      when 'trust_commerce' then TRUST_COMMERCE
      when 'unipaas' then UNIPAAS
      when 'wirecard' then WIRECARD
      else
        default_value
      end
    end
  end
end
