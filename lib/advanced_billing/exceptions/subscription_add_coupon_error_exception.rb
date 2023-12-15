# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Subscription Add Coupon Error class.
  class SubscriptionAddCouponErrorException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :codes

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :coupon_code

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :coupon_codes

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :subscription

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpResponse] The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @codes = hash.key?('codes') ? hash['codes'] : SKIP
      @coupon_code = hash.key?('coupon_code') ? hash['coupon_code'] : SKIP
      @coupon_codes = hash.key?('coupon_codes') ? hash['coupon_codes'] : SKIP
      @subscription = hash.key?('subscription') ? hash['subscription'] : SKIP
    end
  end
end
