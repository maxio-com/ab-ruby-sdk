# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CouponsController
  class CouponsController < BaseController
    # ## Coupons Documentation
    # Coupons can be administered in the Chargify application or created via
    # API. Please view our section on [creating
    # coupons](https://maxio-chargify.zendesk.com/hc/en-us/articles/540474283073
    # 3) for more information.
    # Additionally, for documentation on how to apply a coupon to a subscription
    # within the Chargify UI, please see our documentation
    # [here](https://maxio-chargify.zendesk.com/hc/en-us/articles/5404761012877)
    # .
    # ## Create Coupon
    # This request will create a coupon, based on the provided information.
    # When creating a coupon, you must specify a product family using the
    # `product_family_id`. If no `product_family_id` is passed, the first
    # product family available is used. You will also need to formulate your URL
    # to cite the Product Family ID in your request.
    # You can restrict a coupon to only apply to specific products / components
    # by optionally passing in hashes of `restricted_products` and/or
    # `restricted_components` in the format:
    # `{ "<product/component_id>": boolean_value }`
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the coupon belongs
    # @param [CreateOrUpdateCoupon] body Optional parameter: Example:
    # @return [CouponResponse] response from the API call
    def create_coupon(product_family_id,
                      body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/product_families/{product_family_id}/coupons.json',
                                     Server::DEFAULT)
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
                   .local_error('422',
                                'Unprocessable Entity (WebDAV)',
                                ErrorListResponseException))
        .execute
    end

    # List coupons for a specific Product Family in a Site.
    # If the coupon is set to `use_site_exchange_rate: true`, it will return
    # pricing based on the current exchange rate. If the flag is set to false,
    # it will return all of the defined prices for each currency.
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the coupon belongs
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
    # @param [BasicDateField] filter_date_field Optional parameter: The type of
    # filter you would like to apply to your search. Use in query
    # `filter[date_field]=created_at`.
    # @param [Date] filter_end_date Optional parameter: The end date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns coupons with a
    # timestamp up to and including 11:59:59PM in your site’s time zone on the
    # date specified. Use in query `filter[date_field]=2011-12-15`.
    # @param [DateTime] filter_end_datetime Optional parameter: The end date and
    # time (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field.
    # Returns coupons with a timestamp at or before exact time provided in
    # query. You can specify timezone in query - otherwise your site's time zone
    # will be used. If provided, this parameter will be used instead of
    # end_date. Use in query `?filter[end_datetime]=2011-12-1T10:15:30+01:00`.
    # @param [Date] filter_start_date Optional parameter: The start date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns coupons with a
    # timestamp at or after midnight (12:00:00 AM) in your site’s time zone on
    # the date specified. Use in query `filter[start_date]=2011-12-17`.
    # @param [DateTime] filter_start_datetime Optional parameter: The start date
    # and time (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field.
    # Returns coupons with a timestamp at or after exact time provided in query.
    # You can specify timezone in query - otherwise your site's time zone will
    # be used. If provided, this parameter will be used instead of start_date.
    # Use in query `filter[start_datetime]=2011-12-19T10:15:30+01:00`.
    # @param [Array[Integer]] filter_ids Optional parameter: Allows fetching
    # coupons with matching id based on provided values. Use in query
    # `filter[ids]=1,2,3`.
    # @param [Array[String]] filter_codes Optional parameter: Allows fetching
    # coupons with matching codes based on provided values. Use in query
    # `filter[codes]=free,free_trial`.
    # @param [TrueClass | FalseClass] currency_prices Optional parameter: When
    # fetching coupons, if you have defined multiple currencies at the site
    # level, you can optionally pass the `?currency_prices=true` query param to
    # include an array of currency price data in the response. Use in query
    # `currency_prices=true`.
    # @param [TrueClass | FalseClass] filter_use_site_exchange_rate Optional
    # parameter: Allows fetching coupons with matching use_site_exchange_rate
    # based on provided value. Use in query
    # `filter[use_site_exchange_rate]=true`.
    # @return [Array[CouponResponse]] response from the API call
    def list_coupons_for_product_family(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/product_families/{product_family_id}/coupons.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['product_family_id'], key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['filter_date_field'], key: 'filter[date_field]'))
                   .query_param(new_parameter(options['filter_end_date'], key: 'filter[end_date]'))
                   .query_param(new_parameter(options['filter_end_datetime'], key: 'filter[end_datetime]'))
                   .query_param(new_parameter(options['filter_start_date'], key: 'filter[start_date]'))
                   .query_param(new_parameter(options['filter_start_datetime'], key: 'filter[start_datetime]'))
                   .query_param(new_parameter(options['filter_ids'], key: 'filter[ids]'))
                   .query_param(new_parameter(options['filter_codes'], key: 'filter[codes]'))
                   .query_param(new_parameter(options['currency_prices'], key: 'currency_prices'))
                   .query_param(new_parameter(options['filter_use_site_exchange_rate'], key: 'filter[use_site_exchange_rate]'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CouponResponse.method(:from_hash))
                   .is_response_array(true))
        .execute
    end

    # You can search for a coupon via the API with the find method. By passing a
    # code parameter, the find will attempt to locate a coupon that matches that
    # code. If no coupon is found, a 404 is returned.
    # If you have more than one product family and if the coupon you are trying
    # to find does not belong to the default product family in your site, then
    # you will need to specify (either in the url or as a query string param)
    # the product family id.
    # @param [Integer] product_family_id Optional parameter: The Chargify id of
    # the product family to which the coupon belongs
    # @param [String] code Optional parameter: The code of the coupon
    # @return [CouponResponse] response from the API call
    def read_coupon_by_code(product_family_id: nil,
                            code: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/coupons/find.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(product_family_id, key: 'product_family_id'))
                   .query_param(new_parameter(code, key: 'code'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CouponResponse.method(:from_hash)))
        .execute
    end

    # You can retrieve the Coupon via the API with the Show method. You must
    # identify the Coupon in this call by the ID parameter that Chargify
    # assigns.
    # If instead you would like to find a Coupon using a Coupon code, see the
    # Coupon Find method.
    # When fetching a coupon, if you have defined multiple currencies at the
    # site level, you can optionally pass the `?currency_prices=true` query
    # param to include an array of currency price data in the response.
    # If the coupon is set to `use_site_exchange_rate: true`, it will return
    # pricing based on the current exchange rate. If the flag is set to false,
    # it will return all of the defined prices for each currency.
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the coupon belongs
    # @param [Integer] coupon_id Required parameter: The Chargify id of the
    # coupon
    # @return [CouponResponse] response from the API call
    def read_coupon(product_family_id,
                    coupon_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/product_families/{product_family_id}/coupons/{coupon_id}.json',
                                     Server::DEFAULT)
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

    # ## Update Coupon
    # You can update a Coupon via the API with a PUT request to the resource
    # endpoint.
    # You can restrict a coupon to only apply to specific products / components
    # by optionally passing in hashes of `restricted_products` and/or
    # `restricted_components` in the format:
    # `{ "<product/component_id>": boolean_value }`
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the coupon belongs
    # @param [Integer] coupon_id Required parameter: The Chargify id of the
    # coupon
    # @param [CreateOrUpdateCoupon] body Optional parameter: Example:
    # @return [CouponResponse] response from the API call
    def update_coupon(product_family_id,
                      coupon_id,
                      body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/product_families/{product_family_id}/coupons/{coupon_id}.json',
                                     Server::DEFAULT)
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
                   .deserialize_into(CouponResponse.method(:from_hash)))
        .execute
    end

    # You can archive a Coupon via the API with the archive method.
    # Archiving makes that Coupon unavailable for future use, but allows it to
    # remain attached and functional on existing Subscriptions that are using
    # it.
    # The `archived_at` date and time will be assigned.
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the coupon belongs
    # @param [Integer] coupon_id Required parameter: The Chargify id of the
    # coupon
    # @return [CouponResponse] response from the API call
    def archive_coupon(product_family_id,
                       coupon_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/product_families/{product_family_id}/coupons/{coupon_id}.json',
                                     Server::DEFAULT)
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

    # You can retrieve a list of coupons.
    # If the coupon is set to `use_site_exchange_rate: true`, it will return
    # pricing based on the current exchange rate. If the flag is set to false,
    # it will return all of the defined prices for each currency.
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
    # @param [BasicDateField] date_field Optional parameter: The field was
    # deprecated: on January 20, 2022. We recommend using filter[date_field]
    # instead to achieve the same result. The type of filter you would like to
    # apply to your search.
    # @param [Date] start_date Optional parameter: The field was deprecated: on
    # January 20, 2022. We recommend using filter[start_date] instead to achieve
    # the same result. The start date (format YYYY-MM-DD) with which to filter
    # the date_field. Returns coupons with a timestamp at or after midnight
    # (12:00:00 AM) in your site’s time zone on the date specified.
    # @param [Date] end_date Optional parameter: The field was deprecated: on
    # January 20, 2022. We recommend using filter[end_date] instead to achieve
    # the same result. The end date (format YYYY-MM-DD) with which to filter the
    # date_field. Returns coupons with a timestamp up to and including
    # 11:59:59PM in your site’s time zone on the date specified.
    # @param [DateTime] start_datetime Optional parameter: The field was
    # deprecated: on January 20, 2022. We recommend using filter[start_datetime]
    # instead to achieve the same result. The start date and time (format
    # YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns coupons
    # with a timestamp at or after exact time provided in query. You can specify
    # timezone in query - otherwise your site's time zone will be used. If
    # provided, this parameter will be used instead of start_date.
    # @param [DateTime] end_datetime Optional parameter: The field was
    # deprecated: on January 20, 2022. We recommend using filter[end_datetime]
    # instead to achieve the same result. The end date and time (format
    # YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns coupons
    # with a timestamp at or before exact time provided in query. You can
    # specify timezone in query - otherwise your site's time zone will be used.
    # If provided, this parameter will be used instead of end_date.
    # @param [Array[Integer]] filter_ids Optional parameter: Allows fetching
    # coupons with matching id based on provided values. Use in query
    # `filter[ids]=1,2,3`.
    # @param [Array[String]] filter_codes Optional parameter: Allows fetching
    # coupons with matching code based on provided values. Use in query
    # `filter[ids]=1,2,3`.
    # @param [TrueClass | FalseClass] currency_prices Optional parameter: When
    # fetching coupons, if you have defined multiple currencies at the site
    # level, you can optionally pass the `?currency_prices=true` query param to
    # include an array of currency price data in the response. Use in query
    # `currency_prices=true`.
    # @param [Date] filter_end_date Optional parameter: The end date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns coupons with a
    # timestamp up to and including 11:59:59PM in your site’s time zone on the
    # date specified. Use in query `filter[end_date]=2011-12-17`.
    # @param [DateTime] filter_end_datetime Optional parameter: The end date and
    # time (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field.
    # Returns coupons with a timestamp at or before exact time provided in
    # query. You can specify timezone in query - otherwise your site's time zone
    # will be used. If provided, this parameter will be used instead of
    # end_date. Use in query `filter[end_datetime]=2011-12-19T10:15:30+01:00`.
    # @param [Date] filter_start_date Optional parameter: The start date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns coupons with a
    # timestamp at or after midnight (12:00:00 AM) in your site’s time zone on
    # the date specified. Use in query `filter[start_date]=2011-12-19`.
    # @param [DateTime] filter_start_datetime Optional parameter: The start date
    # and time (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field.
    # Returns coupons with a timestamp at or after exact time provided in query.
    # You can specify timezone in query - otherwise your site's time zone will
    # be used. If provided, this parameter will be used instead of start_date.
    # Use in query `filter[start_datetime]=2011-12-19T10:15:30+01:00`.
    # @param [BasicDateField] filter_date_field Optional parameter: The type of
    # filter you would like to apply to your search. Use in query
    # `filter[date_field]=updated_at`.
    # @param [TrueClass | FalseClass] filter_use_site_exchange_rate Optional
    # parameter: Allows fetching coupons with matching use_site_exchange_rate
    # based on provided value. Use in query
    # `filter[use_site_exchange_rate]=true`.
    # @return [Array[CouponResponse]] response from the API call
    def list_coupons(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/coupons.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['date_field'], key: 'date_field'))
                   .query_param(new_parameter(options['start_date'], key: 'start_date'))
                   .query_param(new_parameter(options['end_date'], key: 'end_date'))
                   .query_param(new_parameter(options['start_datetime'], key: 'start_datetime'))
                   .query_param(new_parameter(options['end_datetime'], key: 'end_datetime'))
                   .query_param(new_parameter(options['filter_ids'], key: 'filter[ids]'))
                   .query_param(new_parameter(options['filter_codes'], key: 'filter[codes]'))
                   .query_param(new_parameter(options['currency_prices'], key: 'currency_prices'))
                   .query_param(new_parameter(options['filter_end_date'], key: 'filter[end_date]'))
                   .query_param(new_parameter(options['filter_end_datetime'], key: 'filter[end_datetime]'))
                   .query_param(new_parameter(options['filter_start_date'], key: 'filter[start_date]'))
                   .query_param(new_parameter(options['filter_start_datetime'], key: 'filter[start_datetime]'))
                   .query_param(new_parameter(options['filter_date_field'], key: 'filter[date_field]'))
                   .query_param(new_parameter(options['filter_use_site_exchange_rate'], key: 'filter[use_site_exchange_rate]'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CouponResponse.method(:from_hash))
                   .is_response_array(true))
        .execute
    end

    # This request will provide details about the coupon usage as an array of
    # data hashes, one per product.
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the coupon belongs
    # @param [Integer] coupon_id Required parameter: The Chargify id of the
    # coupon
    # @return [Array[CouponUsage]] response from the API call
    def read_coupon_usage(product_family_id,
                          coupon_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/product_families/{product_family_id}/coupons/{coupon_id}/usage.json',
                                     Server::DEFAULT)
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

    # You can verify if a specific coupon code is valid using the `validate`
    # method. This method is useful for validating coupon codes that are entered
    # by a customer. If the coupon is found and is valid, the coupon will be
    # returned with a 200 status code.
    # If the coupon is invalid, the status code will be 404 and the response
    # will say why it is invalid. If the coupon is valid, the status code will
    # be 200 and the coupon will be returned. The following reasons for
    # invalidity are supported:
    # + Coupon not found
    # + Coupon is invalid
    # + Coupon expired
    # If you have more than one product family and if the coupon you are
    # validating does not belong to the first product family in your site, then
    # you will need to specify the product family, either in the url or as a
    # query string param. This can be done by supplying the id or the handle in
    # the `handle:my-family` format.
    # Eg.
    # ```
    # https://<subdomain>.chargify.com/product_families/handle:<product_family_h
    # andle>/coupons/validate.<format>?code=<coupon_code>
    # ```
    # Or:
    # ```
    # https://<subdomain>.chargify.com/coupons/validate.<format>?code=<coupon_co
    # de>&product_family_id=<id>
    # ```
    # @param [String] code Required parameter: The code of the coupon
    # @param [Integer] product_family_id Optional parameter: The Chargify id of
    # the product family to which the coupon belongs
    # @return [CouponResponse] response from the API call
    def validate_coupon(code,
                        product_family_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/coupons/validate.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(code, key: 'code')
                                 .is_required(true))
                   .query_param(new_parameter(product_family_id, key: 'product_family_id'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CouponResponse.method(:from_hash))
                   .local_error('404',
                                'Not Found',
                                SingleStringErrorResponseException))
        .execute
    end

    # This endpoint allows you to create and/or update currency prices for an
    # existing coupon. Multiple prices can be created or updated in a single
    # request but each of the currencies must be defined on the site level
    # already and the coupon must be an amount-based coupon, not percentage.
    # Currency pricing for coupons must mirror the setup of the primary coupon
    # pricing - if the primary coupon is percentage based, you will not be able
    # to define pricing in non-primary currencies.
    # @param [Integer] coupon_id Required parameter: The Chargify id of the
    # coupon
    # @param [CouponCurrencyRequest] body Optional parameter: Example:
    # @return [CouponCurrencyResponse] response from the API call
    def update_coupon_currency_prices(coupon_id,
                                      body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/coupons/{coupon_id}/currency_prices.json',
                                     Server::DEFAULT)
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
                   .deserialize_into(CouponCurrencyResponse.method(:from_hash)))
        .execute
    end

    # ## Coupon Subcodes Intro
    # Coupon Subcodes allow you to create a set of unique codes that allow you
    # to expand the use of one coupon.
    # For example:
    # Master Coupon Code:
    # + SPRING2020
    # Coupon Subcodes:
    # + SPRING90210
    # + DP80302
    # + SPRINGBALTIMORE
    # Coupon subcodes can be administered in the Admin Interface or via the API.
    # When creating a coupon subcode, you must specify a coupon to attach it to
    # using the coupon_id. Valid coupon subcodes are all capital letters,
    # contain only letters and numbers, and do not have any spaces. Lowercase
    # letters will be capitalized before the subcode is created.
    # ## Coupon Subcodes Documentation
    # Full documentation on how to create coupon subcodes in the Chargify UI can
    # be located
    # [here](https://chargify.zendesk.com/hc/en-us/articles/4407755909531#coupon
    # -codes).
    # Additionally, for documentation on how to apply a coupon to a Subscription
    # within the Chargify UI, please see our documentation
    # [here](https://chargify.zendesk.com/hc/en-us/articles/4407884887835#coupon
    # ).
    # ## Create Coupon Subcode
    # This request allows you to create specific subcodes underneath an existing
    # coupon code.
    # *Note*: If you are using any of the allowed special characters ("%", "@",
    # "+", "-", "_", and "."), you must encode them for use in the URL.
    #     % to %25
    #     @ to %40
    #     + to %2B
    #     - to %2D
    #     _ to %5F
    #     . to %2E
    # So, if the coupon subcode is `20%OFF`, the URL to delete this coupon
    # subcode would be:
    # `https://<subdomain>.chargify.com/coupons/567/codes/20%25OFF.<format>`
    # @param [Integer] coupon_id Required parameter: The Chargify id of the
    # coupon
    # @param [CouponSubcodes] body Optional parameter: Example:
    # @return [CouponSubcodesResponse] response from the API call
    def create_coupon_subcodes(coupon_id,
                               body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/coupons/{coupon_id}/codes.json',
                                     Server::DEFAULT)
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

    # This request allows you to request the subcodes that are attached to a
    # coupon.
    # @param [Integer] coupon_id Required parameter: The Chargify id of the
    # coupon
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
    # @return [CouponSubcodes] response from the API call
    def list_coupon_subcodes(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/coupons/{coupon_id}/codes.json',
                                     Server::DEFAULT)
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

    # You can update the subcodes for the given Coupon via the API with a PUT
    # request to the resource endpoint.
    # Send an array of new coupon subcodes.
    # **Note**: All current subcodes for that Coupon will be deleted first, and
    # replaced with the list of subcodes sent to this endpoint.
    # The response will contain:
    # + The created subcodes,
    # + Subcodes that were not created because they already exist,
    # + Any subcodes not created because they are invalid.
    # @param [Integer] coupon_id Required parameter: The Chargify id of the
    # coupon
    # @param [CouponSubcodes] body Optional parameter: Example:
    # @return [CouponSubcodesResponse] response from the API call
    def update_coupon_subcodes(coupon_id,
                               body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/coupons/{coupon_id}/codes.json',
                                     Server::DEFAULT)
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
    # @https://<subdomain>.chargify.com/coupons/567/codes/20%25OFF.<format>
    # @param [Integer] coupon_id Required parameter: The Chargify id of the
    # coupon to which the subcode belongs
    # @param [String] subcode Required parameter: The subcode of the coupon
    # @return [void] response from the API call
    def delete_coupon_subcode(coupon_id,
                              subcode)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/coupons/{coupon_id}/codes/{subcode}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(coupon_id, key: 'coupon_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(subcode, key: 'subcode')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('404',
                                'Not Found',
                                APIException))
        .execute
    end
  end
end
