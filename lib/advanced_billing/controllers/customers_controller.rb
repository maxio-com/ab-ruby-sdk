# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CustomersController
  class CustomersController < BaseController
    # You may create a new Customer at any time, or you may create a Customer at
    # the same time you create a Subscription. The only validation restriction
    # is that you may only create one customer for a given reference value.
    # If provided, the `reference` value must be unique. It represents a unique
    # identifier for the customer from your own app, i.e. the customer’s ID.
    # This allows you to retrieve a given customer via a piece of shared
    # information. Alternatively, you may choose to leave `reference` blank, and
    # store Chargify’s unique ID for the customer, which is in the `id`
    # attribute.
    # Full documentation on how to locate, create and edit Customers in the
    # Chargify UI can be located
    # [here](https://chargify.zendesk.com/hc/en-us/articles/4407659914267).
    # ## Required Country Format
    # Chargify requires that you use the ISO Standard Country codes when
    # formatting country attribute of the customer.
    # Countries should be formatted as 2 characters. For more information,
    # please see the following wikipedia article on
    # [ISO_3166-1.](http://en.wikipedia.org/wiki/ISO_3166-1#Current_codes)
    # ## Required State Format
    # Chargify requires that you use the ISO Standard State codes when
    # formatting state attribute of the customer.
    # + US States (2 characters):
    # [ISO_3166-2](https://en.wikipedia.org/wiki/ISO_3166-2:US)
    # + States Outside the US (2-3 characters): To find the correct state codes
    # outside of the US, please go to
    # [ISO_3166-1](http://en.wikipedia.org/wiki/ISO_3166-1#Current_codes) and
    # click on the link in the “ISO 3166-2 codes” column next to country you
    # wish to populate.
    # ## Locale
    # Chargify allows you to attribute a language/region to your customer to
    # deliver invoices in any required language.
    # For more: [Customer
    # Locale](https://chargify.zendesk.com/hc/en-us/articles/4407870384283#custo
    # mer-locale)
    # @param [CreateCustomerRequest] body Optional parameter: Example:
    # @return [CustomerResponse] response from the API call
    def create_customer(body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/customers.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CustomerResponse.method(:from_hash))
                   .local_error('422',
                                'Unprocessable Entity (WebDAV)',
                                CustomerErrorResponseException))
        .execute
    end

    # This request will by default list all customers associated with your Site.
    # ## Find Customer
    # Use the search feature with the `q` query parameter to retrieve an array
    # of customers that matches the search query.
    # Common use cases are:
    # + Search by an email
    # + Search by a Chargify ID
    # + Search by an organization
    # + Search by a reference value from your application
    # + Search by a first or last name
    # To retrieve a single, exact match by reference, please use the [lookup
    # endpoint](https://developers.chargify.com/docs/api-docs/b710d8fbef104-read
    # -customer-by-reference).
    # @param [SortingDirection | nil] direction Optional parameter: Direction to
    # sort customers by time of creation
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request. Default value is 50. The maximum
    # allowed values is 200; any per_page value over 200 will be changed to 200.
    # Use in query `per_page=200`.
    # @param [BasicDateField] date_field Optional parameter: The type of filter
    # you would like to apply to your search. Use in query:
    # `date_field=created_at`.
    # @param [String] start_date Optional parameter: The start date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns subscriptions
    # with a timestamp at or after midnight (12:00:00 AM) in your site’s time
    # zone on the date specified.
    # @param [String] end_date Optional parameter: The end date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns subscriptions
    # with a timestamp up to and including 11:59:59PM in your site’s time zone
    # on the date specified.
    # @param [String] start_datetime Optional parameter: The start date and time
    # (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns
    # subscriptions with a timestamp at or after exact time provided in query.
    # You can specify timezone in query - otherwise your site's time zone will
    # be used. If provided, this parameter will be used instead of start_date.
    # @param [String] end_datetime Optional parameter: The end date and time
    # (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns
    # subscriptions with a timestamp at or before exact time provided in query.
    # You can specify timezone in query - otherwise your site's time zone will
    # be used. If provided, this parameter will be used instead of end_date.
    # @param [String] q Optional parameter: A search query by which to filter
    # customers (can be an email, an ID, a reference, organization)
    # @return [Array[CustomerResponse]] response from the API call
    def list_customers(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['direction'], key: 'direction')
                                 .validator(proc do |value|
                                   UnionTypeLookUp.get(:ListCustomersInputDirection)
                                                  .validate(value)
                                 end))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['date_field'], key: 'date_field'))
                   .query_param(new_parameter(options['start_date'], key: 'start_date'))
                   .query_param(new_parameter(options['end_date'], key: 'end_date'))
                   .query_param(new_parameter(options['start_datetime'], key: 'start_datetime'))
                   .query_param(new_parameter(options['end_datetime'], key: 'end_datetime'))
                   .query_param(new_parameter(options['q'], key: 'q'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CustomerResponse.method(:from_hash))
                   .is_response_array(true))
        .execute
    end

    # This method allows to retrieve the Customer properties by
    # Chargify-generated Customer ID.
    # @param [Integer] id Required parameter: The Chargify id of the customer
    # @return [CustomerResponse] response from the API call
    def read_customer(id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers/{id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CustomerResponse.method(:from_hash)))
        .execute
    end

    # This method allows to update the Customer.
    # @param [Integer] id Required parameter: The Chargify id of the customer
    # @param [UpdateCustomerRequest] body Optional parameter: Example:
    # @return [CustomerResponse] response from the API call
    def update_customer(id,
                        body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/customers/{id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(id, key: 'id')
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
                   .deserialize_into(CustomerResponse.method(:from_hash))
                   .local_error('404',
                                'Not Found',
                                APIException)
                   .local_error('422',
                                'Unprocessable Entity (WebDAV)',
                                CustomerErrorResponseException))
        .execute
    end

    # This method allows you to delete the Customer.
    # @param [Integer] id Required parameter: The Chargify id of the customer
    # @return [void] response from the API call
    def delete_customer(id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/customers/{id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .is_response_void(true))
        .execute
    end

    # Use this method to return the customer object if you have the unique
    # **Reference ID (Your App)** value handy. It will return a single match.
    # @param [String] reference Required parameter: Customer reference
    # @return [CustomerResponse] response from the API call
    def read_customer_by_reference(reference)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers/lookup.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(reference, key: 'reference')
                                 .is_required(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CustomerResponse.method(:from_hash)))
        .execute
    end

    # This method lists all subscriptions that belong to a customer.
    # @param [Integer] customer_id Required parameter: The Chargify id of the
    # customer
    # @return [Array[SubscriptionResponse]] response from the API call
    def list_customer_subscriptions(customer_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers/{customer_id}/subscriptions.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SubscriptionResponse.method(:from_hash))
                   .is_response_array(true))
        .execute
    end
  end
end
