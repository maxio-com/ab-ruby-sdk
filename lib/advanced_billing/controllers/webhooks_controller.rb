# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WebhooksController
  class WebhooksController < BaseController
    # Retrieves a list of webhooks.  You can pass query parameters if you want
    # to filter webhooks. See the
    # [Webhooks](page:introduction/webhooks/webhooks) documentation for more
    # information.
    # @param [WebhookStatus] status Optional parameter: Webhooks with matching
    # status would be returned.
    # @param [String] since_date Optional parameter: Format YYYY-MM-DD. Returns
    # Webhooks with the created_at date greater than or equal to the one
    # specified.
    # @param [String] until_date Optional parameter: Format YYYY-MM-DD. Returns
    # Webhooks with the created_at date less than or equal to the one
    # specified.
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
    # @param [WebhookOrder] order Optional parameter: The order in which the
    # Webhooks are returned.
    # @param [Integer] subscription Optional parameter: The Advanced Billing id
    # of a subscription you'd like to filter for
    # @return [Array[WebhookResponse]] Response from the API call.
    def list_webhooks(options = {})
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/webhooks.json',
                                     Server::PRODUCTION)
                   .query_param(new_parameter(options['status'], key: 'status'))
                   .query_param(new_parameter(options['since_date'], key: 'since_date'))
                   .query_param(new_parameter(options['until_date'], key: 'until_date'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['order'], key: 'order'))
                   .query_param(new_parameter(options['subscription'], key: 'subscription'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WebhookResponse.method(:from_hash))
                    .is_response_array(true))
        .execute
    end

    # Enables webhooks for your site.
    # @param [EnableWebhooksRequest] body Optional parameter: TODO: type
    # description here
    # @return [EnableWebhooksResponse] Response from the API call.
    def enable_webhooks(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/webhooks/settings.json',
                                     Server::PRODUCTION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(EnableWebhooksResponse.method(:from_hash)))
        .execute
    end

    # Replays webhooks. Posting to this endpoint does not immediately resend the
    # webhooks. They are added to a queue and sent as soon as possible,
    # depending on available system resources. You can submit an array of up to
    # 1000 webhook IDs in the replay request.
    # @param [ReplayWebhooksRequest] body Optional parameter: TODO: type
    # description here
    # @return [ReplayWebhooksResponse] Response from the API call.
    def replay_webhooks(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/webhooks/replay.json',
                                     Server::PRODUCTION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ReplayWebhooksResponse.method(:from_hash)))
        .execute
    end

    # Creates an endpoint and assigns a list of webhook subscriptions (events)
    # to it.
    # See the [Webhooks
    # Reference](page:introduction/webhooks/webhooks-reference#events) page for
    # available events.
    # @param [CreateOrUpdateEndpointRequest] body Optional parameter: TODO: type
    # description here
    # @return [EndpointResponse] Response from the API call.
    def create_endpoint(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/endpoints.json',
                                     Server::PRODUCTION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(EndpointResponse.method(:from_hash))
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # Lists endpoints configured for a site.
    # @return [Array[Endpoint]] Response from the API call.
    def list_endpoints
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/endpoints.json',
                                     Server::PRODUCTION)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Endpoint.method(:from_hash))
                    .is_response_array(true))
        .execute
    end

    # Updates an Endpoint. You can change the `url` of your endpoint or the list
    # of `webhook_subscriptions` to which you are subscribed. See the [Webhooks
    # Reference](page:introduction/webhooks/webhooks-reference#events) page for
    # available events.
    # Always send a complete list of events to which you want to subscribe.
    # Sending a PUT request for an existing endpoint with an empty list of
    # `webhook_subscriptions` will unsubscribe all events.
    # If you want to unsubscribe from a specific event, send a list of
    # `webhook_subscriptions` without the specific event key.
    # @param [Integer] endpoint_id Required parameter: The Advanced Billing id
    # for the endpoint that should be updated
    # @param [CreateOrUpdateEndpointRequest] body Optional parameter: TODO: type
    # description here
    # @return [EndpointResponse] Response from the API call.
    def update_endpoint(endpoint_id,
                        body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/endpoints/{endpoint_id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(endpoint_id, key: 'endpoint_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(EndpointResponse.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end
  end
end
