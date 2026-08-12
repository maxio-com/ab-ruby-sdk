# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # CouponsController
  class CouponsController < BaseController
    # Creates a coupon under the specified product family.
    # You can create either a flat amount coupon, by specifying
    # `amount_in_cents`, or percentage coupon by specifying `percentage`.
    # See [Apply Coupons to
    # Subscriptions](https://maxio.zendesk.com/hc/en-us/articles/24261259337101-
    # Coupons-and-Subscriptions) for information on applying a coupon to a
    # subscription in the Advanced Billing UI.
    # @param [Integer] product_family_id Required parameter: The Advanced
    # Billing id of the product family to which the coupon belongs
    # @param [CouponRequest] body Optional parameter: TODO: type description
    # here
    # @return [CouponResponse] Response from the API call.
    def create_coupon(product_family_id,
                      body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/product_families/{product_family_id}/coupons.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(product_family_id, key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponResponse.method(:from_hash))
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # Lists coupons for a specific product family in a site.
    # @param [Integer] product_family_id Required parameter: The Advanced
    # Billing id of the product family to which the coupon belongs
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request. Default value is 30. The maximum
    # allowed values is 200; any per_page value over 200 will be changed to 200.
    # Use in query `per_page=200`.
    # @param [ListCouponsFilter] filter Optional parameter: Filter to use for
    # List Coupons operations
    # @param [TrueClass | FalseClass] currency_prices Optional parameter:
    # (Optional) If you have defined multiple currencies at the site level, you
    # can pass `?currency_prices=true` to include an array of currency price
    # data in the response. Use in query `currency_prices=true`.
    # @return [Array[CouponResponse]] Response from the API call.
    def list_coupons_for_product_family(options = {})
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/product_families/{product_family_id}/coupons.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(options['product_family_id'], key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['filter'], key: 'filter'))
                   .query_param(new_parameter(options['currency_prices'], key: 'currency_prices'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponResponse.method(:from_hash))
                    .is_response_array(true))
        .execute
    end

    # Searches for a coupon by code.
    # If you have more than one product family and if the coupon you are trying
    # to find does not belong to the default product family in your site, you
    # need to specify (either in the URL or as a query string param) the
    # `product_family_id`.
    # @param [Integer] product_family_id Optional parameter: The Advanced
    # Billing id of the product family to which the coupon belongs
    # @param [String] code Optional parameter: The code of the coupon
    # @param [TrueClass | FalseClass] currency_prices Optional parameter:
    # (Optional) If you have defined multiple currencies at the site level, you
    # can pass `?currency_prices=true` to include an array of currency price
    # data in the response.
    # @return [CouponResponse] Response from the API call.
    def find_coupon(product_family_id: nil,
                    code: nil,
                    currency_prices: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/coupons/find.json',
                                     Server::PRODUCTION)
                   .query_param(new_parameter(product_family_id, key: 'product_family_id'))
                   .query_param(new_parameter(code, key: 'code'))
                   .query_param(new_parameter(currency_prices, key: 'currency_prices'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponResponse.method(:from_hash)))
        .execute
    end

    # Returns a coupon by its system-assigned ID. You must identify the Coupon
    # in this call by the ID parameter assigned to it.
    # If instead you would like to find a Coupon using a Coupon code, use the
    # [Find Coupon]($e/Coupons/findCoupon) endpoint.
    # If the coupon is set to `use_site_exchange_rate: true`, it returns pricing
    # based on the current exchange rate. If the flag is set to false, it
    # returns all of the defined prices for each currency.
    # @param [Integer] product_family_id Required parameter: The Advanced
    # Billing id of the product family to which the coupon belongs
    # @param [Integer] coupon_id Required parameter: The Advanced Billing id of
    # the coupon
    # @param [TrueClass | FalseClass] currency_prices Optional parameter:
    # (Optional) If you have defined multiple currencies at the site level, you
    # can pass `?currency_prices=true` to include an array of currency price
    # data in the response.
    # @return [CouponResponse] Response from the API call.
    def read_coupon(product_family_id,
                    coupon_id,
                    currency_prices: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/product_families/{product_family_id}/coupons/{coupon_id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(product_family_id, key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(coupon_id, key: 'coupon_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(currency_prices, key: 'currency_prices'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponResponse.method(:from_hash)))
        .execute
    end

    # Updates a coupon.
    # You can restrict a coupon to only apply to specific products / components
    # by optionally passing in hashes of `restricted_products` and/or
    # `restricted_components` in the format:
    # `{ "<product/component_id>": boolean_value }`
    # @param [Integer] product_family_id Required parameter: The Advanced
    # Billing id of the product family to which the coupon belongs
    # @param [Integer] coupon_id Required parameter: The Advanced Billing id of
    # the coupon
    # @param [CouponRequest] body Optional parameter: TODO: type description
    # here
    # @return [CouponResponse] Response from the API call.
    def update_coupon(product_family_id,
                      coupon_id,
                      body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/product_families/{product_family_id}/coupons/{coupon_id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(product_family_id, key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(coupon_id, key: 'coupon_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponResponse.method(:from_hash))
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # Archives a coupon, making it unavailable for future use while remaining
    # active on existing subscriptions.
    # Archiving makes that Coupon unavailable for future use, but allows it to
    # remain attached and functional on existing Subscriptions that are using
    # it.
    # The `archived_at` date and time will be assigned.
    # @param [Integer] product_family_id Required parameter: The Advanced
    # Billing id of the product family to which the coupon belongs
    # @param [Integer] coupon_id Required parameter: The Advanced Billing id of
    # the coupon
    # @return [CouponResponse] Response from the API call.
    def archive_coupon(product_family_id,
                       coupon_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/product_families/{product_family_id}/coupons/{coupon_id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(product_family_id, key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(coupon_id, key: 'coupon_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponResponse.method(:from_hash)))
        .execute
    end

    # Lists coupons for a site.
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request. Default value is 30. The maximum
    # allowed values is 200; any per_page value over 200 will be changed to 200.
    # Use in query `per_page=200`.
    # @param [ListCouponsFilter] filter Optional parameter: Filter to use for
    # List Coupons operations
    # @param [TrueClass | FalseClass] currency_prices Optional parameter:
    # (Optional) If you have defined multiple currencies at the site level, you
    # can pass `?currency_prices=true` to include an array of currency price
    # data in the response. Use in query `currency_prices=true`.
    # @return [Array[CouponResponse]] Response from the API call.
    def list_coupons(options = {})
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/coupons.json',
                                     Server::PRODUCTION)
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['filter'], key: 'filter'))
                   .query_param(new_parameter(options['currency_prices'], key: 'currency_prices'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponResponse.method(:from_hash))
                    .is_response_array(true))
        .execute
    end

    # Lists coupon usage details, one entry per product.
    # @param [Integer] product_family_id Required parameter: The Advanced
    # Billing id of the product family to which the coupon belongs.
    # @param [Integer] coupon_id Required parameter: The Advanced Billing id of
    # the coupon.
    # @return [Array[CouponUsage]] Response from the API call.
    def read_coupon_usage(product_family_id,
                          coupon_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/product_families/{product_family_id}/coupons/{coupon_id}/usage.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(product_family_id, key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(coupon_id, key: 'coupon_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponUsage.method(:from_hash))
                    .is_response_array(true))
        .execute
    end

    # Verifies whether a specific coupon code is valid. This method is useful
    # for validating coupon codes that are entered by a customer.
    # If you have more than one product family and if the coupon you are
    # validating does not belong to the first product family in your site, you
    # need to specify the product family, either in the URL or as a query string
    # param. This can be done by supplying the id or the handle in the
    # `handle:my-family` format.
    # Supplying the `product_family_handle` in the URL:
    # ```
    # https://<subdomain>.chargify.com/product_families/handle:<product_family_h
    # andle>/coupons/validate.<format>?code=<coupon_code>
    # ```
    # Supplying the `product_family_id` as a query parameter:
    # ```
    # https://<subdomain>.chargify.com/coupons/validate.<format>?code=<coupon_co
    # de>&product_family_id=<id>
    # ```
    # @param [String] code Required parameter: The code of the coupon
    # @param [Integer] product_family_id Optional parameter: The Advanced
    # Billing id of the product family to which the coupon belongs
    # @return [CouponResponse] Response from the API call.
    def validate_coupon(code,
                        product_family_id: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/coupons/validate.json',
                                     Server::PRODUCTION)
                   .query_param(new_parameter(code, key: 'code')
                                 .is_required(true))
                   .query_param(new_parameter(product_family_id, key: 'product_family_id'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponResponse.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found: \'{$response.body}\'',
                                          SingleStringErrorResponseException))
        .execute
    end

    # Creates and/or updates currency prices for an existing coupon. Multiple
    # prices can be created or updated in a single request but each of the
    # currencies must be defined on the site level already and the coupon must
    # be an amount-based coupon, not percentage.
    # Currency pricing for coupons must mirror the setup of the primary coupon
    # pricing - if the primary coupon is percentage based, you will not be able
    # to define pricing in non-primary currencies.
    # @param [Integer] coupon_id Required parameter: The Advanced Billing id of
    # the coupon
    # @param [CouponCurrencyRequest] body Optional parameter: TODO: type
    # description here
    # @return [CouponCurrencyResponse] Response from the API call.
    def create_or_update_coupon_currency_prices(coupon_id,
                                                body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/coupons/{coupon_id}/currency_prices.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(coupon_id, key: 'coupon_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponCurrencyResponse.method(:from_hash))
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorStringMapResponseException))
        .execute
    end

    # Creates subcodes for an existing coupon.
    # Coupon Subcodes allow you to create a set of unique codes that allow you
    # to expand the use of one coupon.
    # For example:
    # Master Coupon Code:
    # + SPRING2020
    # Coupon Subcodes:
    # + SPRING90210
    # + DP80302
    # + SPRINGBALTIMORE
    # When creating a coupon subcode, you must specify a coupon to attach it to
    # using the coupon_id. Valid coupon subcodes are all capital letters,
    # contain only letters and numbers, and do not have any spaces. Lowercase
    # letters are capitalized before the subcode is created.
    # Note: If you are using any of the allowed special characters ("%", "@",
    # "+", "-", "_", and "."), you must encode them for use in the URL.
    #     % to %25
    #     @ to %40
    #     + to %2B
    #     - to %2D
    #     _ to %5F
    #     . to %2E
    # So, if the coupon subcode is `20%OFF`, the URL to delete this coupon
    # subcode would be:
    # `https://<subdomain>.chargify.com/coupons/567/codes/20%25OFF.<format>`.
    # For more information on coupon codes and applying coupons to
    # subscriptions, see [Coupon
    # Codes](https://maxio.zendesk.com/hc/en-us/articles/24261208729229-Coupon-C
    # odes) and [Coupons and
    # Subscriptions](https://maxio.zendesk.com/hc/en-us/articles/24261259337101-
    # Coupons-and-Subscriptions).
    # @param [Integer] coupon_id Required parameter: The Advanced Billing id of
    # the coupon
    # @param [CouponSubcodes] body Optional parameter: TODO: type description
    # here
    # @return [CouponSubcodesResponse] Response from the API call.
    def create_coupon_subcodes(coupon_id,
                               body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/coupons/{coupon_id}/codes.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(coupon_id, key: 'coupon_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponSubcodesResponse.method(:from_hash)))
        .execute
    end

    # Lists the subcodes attached to a coupon.
    # @param [Integer] coupon_id Required parameter: The Advanced Billing id of
    # the coupon
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request. Default value is 20. The maximum
    # allowed values is 200; any per_page value over 200 will be changed to 200.
    # Use in query `per_page=200`.
    # @return [CouponSubcodes] Response from the API call.
    def list_coupon_subcodes(options = {})
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/coupons/{coupon_id}/codes.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(options['coupon_id'], key: 'coupon_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponSubcodes.method(:from_hash)))
        .execute
    end

    # Updates the subcodes for a coupon, replacing all existing subcodes with
    # the new list.
    # Send an array of new coupon subcodes.
    # **Note**: All current subcodes for that Coupon will be deleted first, and
    # replaced with the list of subcodes sent to this endpoint.
    # The response will contain:
    # + The created subcodes,
    # + Subcodes that were not created because they already exist,
    # + Any subcodes not created because they are invalid.
    # @param [Integer] coupon_id Required parameter: The Advanced Billing id of
    # the coupon
    # @param [CouponSubcodes] body Optional parameter: TODO: type description
    # here
    # @return [CouponSubcodesResponse] Response from the API call.
    def update_coupon_subcodes(coupon_id,
                               body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/coupons/{coupon_id}/codes.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(coupon_id, key: 'coupon_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CouponSubcodesResponse.method(:from_hash)))
        .execute
    end

    # Deletes a specific subcode from a coupon.
    # ## Example
    # Given a coupon with an ID of 567, and a coupon subcode of 20OFF, the URL
    # to `DELETE` this coupon subcode would be:
    # ```
    # http://subdomain.chargify.com/coupons/567/codes/20OFF.<format>
    # ```
    # Note: If you are using any of the allowed special characters (“%”, “@”,
    # “+”, “-”, “_”, and “.”), you must encode them for use in the URL.
    # | Special character | Encoding |
    # |-------------------|----------|
    # | %                 | %25      |
    # | @                 | %40      |
    # | +                 | %2B      |
    # | –                 | %2D      |
    # | _                 | %5F      |
    # | .                 | %2E      |
    # ## Percent Encoding Example
    # Or if the coupon subcode is 20%OFF, the URL to delete this coupon subcode
    # would be:
    # @https://<subdomain>.chargify.com/coupons/567/codes/20%25OFF.<format>.
    # @param [Integer] coupon_id Required parameter: The Advanced Billing id of
    # the coupon to which the subcode belongs
    # @param [String] subcode Required parameter: The subcode of the coupon
    # @return [void] Response from the API call.
    def delete_coupon_subcode(coupon_id,
                              subcode)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/coupons/{coupon_id}/codes/{subcode}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(coupon_id, key: 'coupon_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(subcode, key: 'subcode')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .is_response_void(true)
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException))
        .execute
    end
  end
end
