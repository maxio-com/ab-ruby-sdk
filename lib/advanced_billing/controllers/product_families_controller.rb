# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ProductFamiliesController
  class ProductFamiliesController < BaseController
    # This method allows to retrieve a list of Products belonging to a Product
    # Family.
    # @param [String] product_family_id Required parameter: Either the product
    # family's id or its handle prefixed with `handle:`
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
    # @param [BasicDateField] date_field Optional parameter: The type of filter
    # you would like to apply to your search. Use in query:
    # `date_field=created_at`.
    # @param [ListProductsFilter] filter Optional parameter: Filter to use for
    # List Products operations
    # @param [Date] start_date Optional parameter: The start date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns products with a
    # timestamp at or after midnight (12:00:00 AM) in your site’s time zone on
    # the date specified.
    # @param [Date] end_date Optional parameter: The end date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns products with a
    # timestamp up to and including 11:59:59PM in your site’s time zone on the
    # date specified.
    # @param [DateTime] start_datetime Optional parameter: The start date and
    # time (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field.
    # Returns products with a timestamp at or after exact time provided in
    # query. You can specify timezone in query - otherwise your site's time zone
    # will be used. If provided, this parameter will be used instead of
    # start_date.
    # @param [DateTime] end_datetime Optional parameter: The end date and time
    # (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns
    # products with a timestamp at or before exact time provided in query. You
    # can specify timezone in query - otherwise your site's time zone will be
    # used. If provided, this parameter will be used instead of end_date.
    # @param [TrueClass | FalseClass] include_archived Optional parameter:
    # Include archived products
    # @param [ListProductsInclude] include Optional parameter: Allows including
    # additional data in the response. Use in query
    # `include=prepaid_product_price_point`.
    # @return [Array[ProductResponse]] response from the API call.
    def list_products_for_product_family(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/product_families/{product_family_id}/products.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(options['product_family_id'], key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['date_field'], key: 'date_field'))
                   .query_param(new_parameter(options['filter'], key: 'filter'))
                   .query_param(new_parameter(options['start_date'], key: 'start_date'))
                   .query_param(new_parameter(options['end_date'], key: 'end_date'))
                   .query_param(new_parameter(options['start_datetime'], key: 'start_datetime'))
                   .query_param(new_parameter(options['end_datetime'], key: 'end_datetime'))
                   .query_param(new_parameter(options['include_archived'], key: 'include_archived'))
                   .query_param(new_parameter(options['include'], key: 'include'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ProductResponse.method(:from_hash))
                    .is_response_array(true)
                    .local_error('404',
                                 'Not Found',
                                 APIException))
        .execute
    end

    # This method will create a Product Family within your Advanced Billing
    # site. Create a Product Family to act as a container for your products,
    # components and coupons.
    # Full documentation on how Product Families operate within the Advanced
    # Billing UI can be located
    # [here](https://maxio.zendesk.com/hc/en-us/articles/24261098936205-Product-
    # Families).
    # @param [CreateProductFamilyRequest] body Optional parameter: Example:
    # @return [ProductFamilyResponse] response from the API call.
    def create_product_family(body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/product_families.json',
                                     Server::PRODUCTION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ProductFamilyResponse.method(:from_hash))
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # This method allows to retrieve a list of Product Families for a site.
    # @param [BasicDateField] date_field Optional parameter: The type of filter
    # you would like to apply to your search. Use in query:
    # `date_field=created_at`.
    # @param [Date] start_date Optional parameter: The start date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns products with a
    # timestamp at or after midnight (12:00:00 AM) in your site’s time zone on
    # the date specified.
    # @param [Date] end_date Optional parameter: The end date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns products with a
    # timestamp up to and including 11:59:59PM in your site’s time zone on the
    # date specified.
    # @param [DateTime] start_datetime Optional parameter: The start date and
    # time (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field.
    # Returns products with a timestamp at or after exact time provided in
    # query. You can specify timezone in query - otherwise your site's time zone
    # will be used. If provided, this parameter will be used instead of
    # start_date.
    # @param [DateTime] end_datetime Optional parameter: The end date and time
    # (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns
    # products with a timestamp at or before exact time provided in query. You
    # can specify timezone in query - otherwise your site's time zone will be
    # used. If provided, this parameter will be used instead of end_date.
    # @return [Array[ProductFamilyResponse]] response from the API call.
    def list_product_families(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/product_families.json',
                                     Server::PRODUCTION)
                   .query_param(new_parameter(options['date_field'], key: 'date_field'))
                   .query_param(new_parameter(options['start_date'], key: 'start_date'))
                   .query_param(new_parameter(options['end_date'], key: 'end_date'))
                   .query_param(new_parameter(options['start_datetime'], key: 'start_datetime'))
                   .query_param(new_parameter(options['end_datetime'], key: 'end_datetime'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ProductFamilyResponse.method(:from_hash))
                    .is_response_array(true))
        .execute
    end

    # This method allows to retrieve a Product Family via the
    # `product_family_id`. The response will contain a Product Family object.
    # The product family can be specified either with the id number, or with the
    # `handle:my-family` format.
    # @param [Integer] id Required parameter: The Advanced Billing id of the
    # product family
    # @return [ProductFamilyResponse] response from the API call.
    def read_product_family(id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/product_families/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ProductFamilyResponse.method(:from_hash)))
        .execute
    end
  end
end
