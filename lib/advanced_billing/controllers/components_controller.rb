# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ComponentsController
  class ComponentsController < BaseController
    # This request will create a component definition of kind
    # **metered_component** under the specified product family. Metered
    # component can then be added and “allocated” for a subscription.
    # Metered components are used to bill for any type of unit that resets to 0
    # at the end of the billing period (think daily Google Adwords clicks or
    # monthly cell phone minutes). This is most commonly associated with
    # usage-based billing and many other pricing schemes.
    # Note that this is different from recurring quantity-based components,
    # which DO NOT reset to zero at the start of every billing period. If you
    # want to bill for a quantity of something that does not change unless you
    # change it, then you want quantity components, instead.
    # For more information on components, please see our documentation
    # [here](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405020625677)
    # .
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the component belongs
    # @param [CreateMeteredComponent] body Optional parameter: Example:
    # @return [ComponentResponse] response from the API call
    def create_metered_component(product_family_id,
                                 body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/product_families/{product_family_id}/metered_components.json',
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
                   .deserialize_into(ComponentResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException)
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorListResponseException))
        .execute
    end

    # This request will create a component definition of kind
    # **quantity_based_component** under the specified product family. Quantity
    # Based component can then be added and “allocated” for a subscription.
    # When defining Quantity Based component, You can choose one of 2 types:
    # #### Recurring
    # Recurring quantity-based components are used to bill for the number of
    # some unit (think monthly software user licenses or the number of pairs of
    # socks in a box-a-month club). This is most commonly associated with
    # billing for user licenses, number of users, number of employees, etc.
    # #### One-time
    # One-time quantity-based components are used to create ad hoc usage charges
    # that do not recur. For example, at the time of signup, you might want to
    # charge your customer a one-time fee for onboarding or other services.
    # The allocated quantity for one-time quantity-based components immediately
    # gets reset back to zero after the allocation is made.
    # For more information on components, please see our documentation
    # [here](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405020625677)
    # .
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the component belongs
    # @param [CreateQuantityBasedComponent] body Optional parameter: Example:
    # @return [ComponentResponse] response from the API call
    def create_quantity_based_component(product_family_id,
                                        body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/product_families/{product_family_id}/quantity_based_components.json',
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
                   .deserialize_into(ComponentResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException)
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorListResponseException))
        .execute
    end

    # This request will create a component definition of kind
    # **on_off_component** under the specified product family. On/Off component
    # can then be added and “allocated” for a subscription.
    # On/off components are used for any flat fee, recurring add on (think
    # $99/month for tech support or a flat add on shipping fee).
    # For more information on components, please see our documentation
    # [here](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405020625677)
    # .
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the component belongs
    # @param [CreateOnOffComponent] body Optional parameter: Example:
    # @return [ComponentResponse] response from the API call
    def create_on_off_component(product_family_id,
                                body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/product_families/{product_family_id}/on_off_components.json',
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
                   .deserialize_into(ComponentResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException)
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorListResponseException))
        .execute
    end

    # This request will create a component definition of kind
    # **prepaid_usage_component** under the specified product family. Prepaid
    # component can then be added and “allocated” for a subscription.
    # Prepaid components allow customers to pre-purchase units that can be used
    # up over time on their subscription. In a sense, they are the mirror image
    # of metered components; while metered components charge at the end of the
    # period for the amount of units used, prepaid components are charged for at
    # the time of purchase, and we subsequently keep track of the usage against
    # the amount purchased.
    # For more information on components, please see our documentation
    # [here](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405020625677)
    # .
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the component belongs
    # @param [CreatePrepaidComponent] body Optional parameter: Example:
    # @return [ComponentResponse] response from the API call
    def create_prepaid_usage_component(product_family_id,
                                       body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/product_families/{product_family_id}/prepaid_usage_components.json',
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
                   .deserialize_into(ComponentResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException)
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorListResponseException))
        .execute
    end

    # This request will create a component definition of kind
    # **event_based_component** under the specified product family. Event-based
    # component can then be added and “allocated” for a subscription.
    # Event-based components are similar to other component types, in that you
    # define the component parameters (such as name and taxability) and the
    # pricing. A key difference for the event-based component is that it must be
    # attached to a metric. This is because the metric provides the component
    # with the actual quantity used in computing what and how much will be
    # billed each period for each subscription.
    # So, instead of reporting usage directly for each component (as you would
    # with metered components), the usage is derived from analysis of your
    # events.
    # For more information on components, please see our documentation
    # [here](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405020625677)
    # .
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the component belongs
    # @param [CreateEBBComponent] body Optional parameter: Example:
    # @return [ComponentResponse] response from the API call
    def create_event_based_component(product_family_id,
                                     body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/product_families/{product_family_id}/event_based_components.json',
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
                   .deserialize_into(ComponentResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException)
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorListResponseException))
        .execute
    end

    # This request will return information regarding a component having the
    # handle you provide. You can identify your components with a handle so you
    # don't have to save or reference the IDs we generate.
    # @param [String] handle Required parameter: The handle of the component to
    # find
    # @return [ComponentResponse] response from the API call
    def find_component(handle)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/components/lookup.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(handle, key: 'handle')
                                 .is_required(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ComponentResponse.method(:from_hash)))
        .execute
    end

    # This request will return information regarding a component from a specific
    # product family.
    # You may read the component by either the component's id or handle. When
    # using the handle, it must be prefixed with `handle:`.
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the component belongs
    # @param [String] component_id Required parameter: Either the Chargify id of
    # the component or the handle for the component prefixed with `handle:`
    # @return [ComponentResponse] response from the API call
    def read_component(product_family_id,
                       component_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/product_families/{product_family_id}/components/{component_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(product_family_id, key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(component_id, key: 'component_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ComponentResponse.method(:from_hash)))
        .execute
    end

    # This request will update a component from a specific product family.
    # You may read the component by either the component's id or handle. When
    # using the handle, it must be prefixed with `handle:`.
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the component belongs
    # @param [String] component_id Required parameter: Either the Chargify id of
    # the component or the handle for the component prefixed with `handle:`
    # @param [UpdateComponentRequest] body Optional parameter: Example:
    # @return [ComponentResponse] response from the API call
    def update_product_family_component(product_family_id,
                                        component_id,
                                        body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/product_families/{product_family_id}/components/{component_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(product_family_id, key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(component_id, key: 'component_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ComponentResponse.method(:from_hash))
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorListResponseException))
        .execute
    end

    # Sending a DELETE request to this endpoint will archive the component. All
    # current subscribers will be unffected; their subscription/purchase will
    # continue to be charged as usual.
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family to which the component belongs
    # @param [String] component_id Required parameter: Either the Chargify id of
    # the component or the handle for the component prefixed with `handle:`
    # @return [Component] response from the API call
    def archive_component(product_family_id,
                          component_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/product_families/{product_family_id}/components/{component_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(product_family_id, key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(component_id, key: 'component_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Component.method(:from_hash))
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorListResponseException))
        .execute
    end

    # This request will return a list of components for a site.
    # @param [BasicDateField] date_field Optional parameter: The type of filter
    # you would like to apply to your search.
    # @param [String] start_date Optional parameter: The start date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns components with a
    # timestamp at or after midnight (12:00:00 AM) in your site’s time zone on
    # the date specified.
    # @param [String] end_date Optional parameter: The end date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns components with a
    # timestamp up to and including 11:59:59PM in your site’s time zone on the
    # date specified.
    # @param [String] start_datetime Optional parameter: The start date and time
    # (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns
    # components with a timestamp at or after exact time provided in query. You
    # can specify timezone in query - otherwise your site's time zone will be
    # used. If provided, this parameter will be used instead of start_date.
    # @param [String] end_datetime Optional parameter: The end date and time
    # (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns
    # components with a timestamp at or before exact time provided in query. You
    # can specify timezone in query - otherwise your site's time zone will be
    # used. If provided, this parameter will be used instead of end_date.
    # optional
    # @param [TrueClass | FalseClass] include_archived Optional parameter:
    # Include archived items
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
    # @param [ListComponentsFilter] filter Optional parameter: Filter to use for
    # List Components operations
    # @return [Array[ComponentResponse]] response from the API call
    def list_components(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/components.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['date_field'], key: 'date_field'))
                   .query_param(new_parameter(options['start_date'], key: 'start_date'))
                   .query_param(new_parameter(options['end_date'], key: 'end_date'))
                   .query_param(new_parameter(options['start_datetime'], key: 'start_datetime'))
                   .query_param(new_parameter(options['end_datetime'], key: 'end_datetime'))
                   .query_param(new_parameter(options['include_archived'], key: 'include_archived'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['filter'], key: 'filter'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ComponentResponse.method(:from_hash))
                   .is_response_array(true))
        .execute
    end

    # This request will update a component.
    # You may read the component by either the component's id or handle. When
    # using the handle, it must be prefixed with `handle:`.
    # @param [String] component_id Required parameter: The id or handle of the
    # component
    # @param [UpdateComponentRequest] body Optional parameter: Example:
    # @return [ComponentResponse] response from the API call
    def update_component(component_id,
                         body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/components/{component_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(component_id, key: 'component_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ComponentResponse.method(:from_hash))
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorListResponseException))
        .execute
    end

    # This request will return a list of components for a particular product
    # family.
    # @param [Integer] product_family_id Required parameter: The Chargify id of
    # the product family
    # @param [TrueClass | FalseClass] include_archived Optional parameter:
    # Include archived items.
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
    # @param [ListComponentsFilter] filter Optional parameter: Filter to use for
    # List Components operations
    # @param [BasicDateField] date_field Optional parameter: The type of filter
    # you would like to apply to your search. Use in query
    # `date_field=created_at`.
    # @param [String] end_date Optional parameter: The end date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns components with a
    # timestamp up to and including 11:59:59PM in your site’s time zone on the
    # date specified.
    # @param [String] end_datetime Optional parameter: The end date and time
    # (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns
    # components with a timestamp at or before exact time provided in query. You
    # can specify timezone in query - otherwise your site's time zone will be
    # used. If provided, this parameter will be used instead of end_date.
    # optional.
    # @param [String] start_date Optional parameter: The start date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns components with a
    # timestamp at or after midnight (12:00:00 AM) in your site’s time zone on
    # the date specified.
    # @param [String] start_datetime Optional parameter: The start date and time
    # (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns
    # components with a timestamp at or after exact time provided in query. You
    # can specify timezone in query - otherwise your site's time zone will be
    # used. If provided, this parameter will be used instead of start_date.
    # @return [Array[ComponentResponse]] response from the API call
    def list_components_for_product_family(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/product_families/{product_family_id}/components.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['product_family_id'], key: 'product_family_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['include_archived'], key: 'include_archived'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['filter'], key: 'filter'))
                   .query_param(new_parameter(options['date_field'], key: 'date_field'))
                   .query_param(new_parameter(options['end_date'], key: 'end_date'))
                   .query_param(new_parameter(options['end_datetime'], key: 'end_datetime'))
                   .query_param(new_parameter(options['start_date'], key: 'start_date'))
                   .query_param(new_parameter(options['start_datetime'], key: 'start_datetime'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ComponentResponse.method(:from_hash))
                   .is_response_array(true))
        .execute
    end
  end
end
