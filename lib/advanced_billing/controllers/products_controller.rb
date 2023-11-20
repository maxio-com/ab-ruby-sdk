# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ProductsController
  class ProductsController < BaseController
    # Use this method to create a product within your Chargify site.
    # + [Products
    # Documentation](https://maxio-chargify.zendesk.com/hc/en-us/articles/540556
    # 1405709)
    # + [Changing a Subscription's
    # Product](https://maxio-chargify.zendesk.com/hc/en-us/articles/540422533466
    # 9-Product-Changes-Migrations)
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the product belongs
    # @param [CreateOrUpdateProductRequest] body Optional parameter: Example:
    # @return [ProductResponse] response from the API call
    def create_product(product_family_id,
                       body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/product_families/{product_family_id}/products.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(product_family_id, key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ProductResponse.method(:from_hash)))
        .execute
    end

    # This endpoint allows you to read the current details of a product that
    # you've created in Chargify.
    # @param [Integer] product_id Required parameter: The Chargify id of the
    # product
    # @return [ProductResponse] response from the API call
    def read_product(product_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/products/{product_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(product_id, key: 'product_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ProductResponse.method(:from_hash)))
        .execute
    end

    # Use this method to change aspects of an existing product.
    # ### Input Attributes Update Notes
    # + `update_return_params` The parameters we will append to your
    # `update_return_url`. See Return URLs and Parameters
    # ### Product Price Point
    # Updating a product using this endpoint will create a new price point and
    # set it as the default price point for this product. If you should like to
    # update an existing product price point, that must be done separately.
    # @param [Integer] product_id Required parameter: The Chargify id of the
    # product
    # @param [CreateOrUpdateProductRequest] body Optional parameter: Example:
    # @return [ProductResponse] response from the API call
    def update_product(product_id,
                       body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/products/{product_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(product_id, key: 'product_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ProductResponse.method(:from_hash))
                   .local_error('422',
                                'Unprocessable Entity (WebDAV)',
                                ErrorListResponseException))
        .execute
    end

    # Sending a DELETE request to this endpoint will archive the product. All
    # current subscribers will be unffected; their subscription/purchase will
    # continue to be charged monthly.
    # This will restrict the option to chose the product for purchase via the
    # Billing Portal, as well as disable Public Signup Pages for the product.
    # @param [Integer] product_id Required parameter: The Chargify id of the
    # product
    # @return [ProductResponse] response from the API call
    def archive_product(product_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/products/{product_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(product_id, key: 'product_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ProductResponse.method(:from_hash)))
        .execute
    end

    # This method allows to retrieve a Product object by its `api_handle`.
    # @param [String] api_handle Required parameter: The handle of the product
    # @return [ProductResponse] response from the API call
    def read_product_by_handle(api_handle)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/products/handle/{api_handle}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(api_handle, key: 'api_handle')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ProductResponse.method(:from_hash)))
        .execute
    end

    # This method allows to retrieve a list of Products belonging to a Site.
    # @param [BasicDateField] date_field Optional parameter: The type of filter
    # you would like to apply to your search. Use in query:
    # `date_field=created_at`.
    # @param [String] end_date Optional parameter: The end date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns products with a
    # timestamp up to and including 11:59:59PM in your site’s time zone on the
    # date specified.
    # @param [String] end_datetime Optional parameter: The end date and time
    # (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns
    # products with a timestamp at or before exact time provided in query. You
    # can specify timezone in query - otherwise your site''s time zone will be
    # used. If provided, this parameter will be used instead of end_date.
    # @param [String] start_date Optional parameter: The start date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns products with a
    # timestamp at or after midnight (12:00:00 AM) in your site’s time zone on
    # the date specified.
    # @param [String] start_datetime Optional parameter: The start date and time
    # (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns
    # products with a timestamp at or after exact time provided in query. You
    # can specify timezone in query - otherwise your site''s time zone will be
    # used. If provided, this parameter will be used instead of start_date.
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
    # @param [TrueClass | FalseClass] include_archived Optional parameter:
    # Include archived products. Use in query: `include_archived=true`.
    # @param [ListProductsInclude] include Optional parameter: Allows including
    # additional data in the response. Use in query
    # `include=prepaid_product_price_point`.
    # @param [IncludeNotNull]
    # filter_prepaid_product_price_point_product_price_point_id Optional
    # parameter: Allows fetching products only if a prepaid product price point
    # is present or not. To use this filter you also have to include the
    # following param in the request `include=prepaid_product_price_point`. Use
    # in query
    # `filter[prepaid_product_price_point][product_price_point_id]=not_null`.
    # @param [TrueClass | FalseClass] filter_use_site_exchange_rate Optional
    # parameter: Allows fetching products with matching use_site_exchange_rate
    # based on provided value (refers to default price point). Use in query
    # `filter[use_site_exchange_rate]=true`.
    # @return [Array[ProductResponse]] response from the API call
    def list_products(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/products.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['date_field'], key: 'date_field'))
                   .query_param(new_parameter(options['end_date'], key: 'end_date'))
                   .query_param(new_parameter(options['end_datetime'], key: 'end_datetime'))
                   .query_param(new_parameter(options['start_date'], key: 'start_date'))
                   .query_param(new_parameter(options['start_datetime'], key: 'start_datetime'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['include_archived'], key: 'include_archived'))
                   .query_param(new_parameter(options['include'], key: 'include'))
                   .query_param(new_parameter(options['filter_prepaid_product_price_point_product_price_point_id'], key: 'filter[prepaid_product_price_point][product_price_point_id]'))
                   .query_param(new_parameter(options['filter_use_site_exchange_rate'], key: 'filter[use_site_exchange_rate]'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ProductResponse.method(:from_hash))
                   .is_response_array(true))
        .execute
    end
  end
end
