# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The JSON error body returned by every wallet, transaction, adjustment,
  # purchase, and Wallet Product endpoint for `400`, `404`, `409`, `422`, `500`,
  # and `503` responses. A `403` is not JSON; it is the plain text `403
  # Forbidden`.
  class WalletErrorResponseException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # Human-readable messages. These may be reworded, so match on `code`
    # instead.
    # @return [Array[String]]
    attr_accessor :errors

    # A stable, machine-readable reason, for example `wallet_depleted`,
    # `wallet_not_found`, `wallet_product_not_found`, `price_point_archived`,
    # `kind_invalid`, or `parameter_missing`. Failures that come from record
    # validation, such as a field that fails a model rule, report
    # `validation_failed`.
    # @return [String]
    attr_accessor :code

    # Returned only by Create Wallet Purchase with
    # `purchase_paid_but_uncredited`, `purchase_declined_invoice_open`,
    # `purchase_invoice_left_open` and `purchase_payment_outcome_unknown`: the
    # uid of the invoice the purchase created. Check it before buying again.
    # @return [String]
    attr_accessor :invoice_uid

    # Returned alongside `invoice_uid`: the number of the invoice the purchase
    # created.
    # @return [String]
    attr_accessor :invoice_number

    # The constructor.
    # @param [String] reason The reason for raising an exception.
    # @param [HttpResponse] response The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] hash The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      return nil unless hash

      @errors = hash.key?('errors') ? hash['errors'] : nil
      @code = hash.key?('code') ? hash['code'] : nil
      @invoice_uid = hash.key?('invoice_uid') ? hash['invoice_uid'] : SKIP
      @invoice_number =
        hash.key?('invoice_number') ? hash['invoice_number'] : SKIP
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} errors: #{@errors}, code: #{@code}, invoice_uid: #{@invoice_uid},"\
      " invoice_number: #{@invoice_number}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} errors: #{@errors.inspect}, code: #{@code.inspect}, invoice_uid:"\
      " #{@invoice_uid.inspect}, invoice_number: #{@invoice_number.inspect}>"
    end
  end
end
