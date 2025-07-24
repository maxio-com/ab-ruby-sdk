# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The vault that stores the payment profile with the provided `vault_token`.
  # Use `bogus` for testing.
  class CreditCardVault
    CREDIT_CARD_VAULT = [
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

      CREDIT_CARD_VAULT.include?(value)
    end
  end
end
