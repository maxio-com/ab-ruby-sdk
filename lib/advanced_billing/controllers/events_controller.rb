# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # EventsController
  class EventsController < BaseController
    # ## Events Intro
    # Advanced Billing Events include various activity that happens around a
    # Site. This information is **especially** useful to track down issues that
    # arise when subscriptions are not created due to errors.
    # Within the Advanced Billing UI, "Events" are referred to as "Site
    # Activity".  Full documentation on how to record view Events / Site Activty
    # in the Advanced Billing UI can be located
    # [here](https://maxio.zendesk.com/hc/en-us/articles/24250671733517-Site-Act
    # ivity).
    # ## List Events for a Site
    # This method will retrieve a list of events for a site. Use query string
    # filters to narrow down results. You may use the `key` filter as part of
    # your query string to narrow down results.
    # ### Legacy Filters
    # The following keys are no longer supported.
    # + `payment_failure_recreated`
    # + `payment_success_recreated`
    # + `renewal_failure_recreated`
    # + `renewal_success_recreated`
    # + `zferral_revenue_post_failure` - (Specific to the deprecated Zferral
    # integration)
    # + `zferral_revenue_post_success` - (Specific to the deprecated Zferral
    # integration)
    # ## Event Specific Data
    # Event Specific Data
    # Each event type has its own `event_specific_data` specified.
    # Here’s an example event for the `subscription_product_change` event:
    # ```
    # {
    #     "event": {
    #         "id": 351,
    #         "key": "subscription_product_change",
    #         "message": "Product changed on Marky Mark's subscription from
    # 'Basic' to 'Pro'",
    #         "subscription_id": 205,
    #         "event_specific_data": {
    #             "new_product_id": 3,
    #             "previous_product_id": 2
    #         },
    #         "created_at": "2012-01-30T10:43:31-05:00"
    #     }
    # }
    # ```
    # Here’s an example event for the `subscription_state_change` event:
    # ```
    #  {
    #      "event": {
    #          "id": 353,
    #          "key": "subscription_state_change",
    #          "message": "State changed on Marky Mark's subscription to Pro
    # from trialing to active",
    #          "subscription_id": 205,
    #          "event_specific_data": {
    #              "new_subscription_state": "active",
    #              "previous_subscription_state": "trialing"
    #          },
    #          "created_at": "2012-01-30T10:43:33-05:00"
    #      }
    #  }
    # ```
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
    # @param [Integer] since_id Optional parameter: Returns events with an id
    # greater than or equal to the one specified
    # @param [Integer] max_id Optional parameter: Returns events with an id less
    # than or equal to the one specified
    # @param [Direction] direction Optional parameter: The sort direction of the
    # returned events.
    # @param [Array[EventType]] filter Optional parameter: You can pass multiple
    # event keys after comma. Use in query
    # `filter=signup_success,payment_success`.
    # @param [ListEventsDateField] date_field Optional parameter: The type of
    # filter you would like to apply to your search.
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
    # @return [Array[EventResponse]] response from the API call
    def list_events(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/events.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['since_id'], key: 'since_id'))
                   .query_param(new_parameter(options['max_id'], key: 'max_id'))
                   .query_param(new_parameter(options['direction'], key: 'direction'))
                   .query_param(new_parameter(options['filter'], key: 'filter'))
                   .query_param(new_parameter(options['date_field'], key: 'date_field'))
                   .query_param(new_parameter(options['start_date'], key: 'start_date'))
                   .query_param(new_parameter(options['end_date'], key: 'end_date'))
                   .query_param(new_parameter(options['start_datetime'], key: 'start_datetime'))
                   .query_param(new_parameter(options['end_datetime'], key: 'end_datetime'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(EventResponse.method(:from_hash))
                    .is_response_array(true))
        .execute
    end

    # The following request will return a list of events for a subscription.
    # Each event type has its own `event_specific_data` specified.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
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
    # @param [Integer] since_id Optional parameter: Returns events with an id
    # greater than or equal to the one specified
    # @param [Integer] max_id Optional parameter: Returns events with an id less
    # than or equal to the one specified
    # @param [Direction] direction Optional parameter: The sort direction of the
    # returned events.
    # @param [Array[EventType]] filter Optional parameter: You can pass multiple
    # event keys after comma. Use in query
    # `filter=signup_success,payment_success`.
    # @return [Array[EventResponse]] response from the API call
    def list_subscription_events(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions/{subscription_id}/events.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['subscription_id'], key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['since_id'], key: 'since_id'))
                   .query_param(new_parameter(options['max_id'], key: 'max_id'))
                   .query_param(new_parameter(options['direction'], key: 'direction'))
                   .query_param(new_parameter(options['filter'], key: 'filter'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(EventResponse.method(:from_hash))
                    .is_response_array(true))
        .execute
    end

    # Get a count of all the events for a given site by using this method.
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
    # @param [Integer] since_id Optional parameter: Returns events with an id
    # greater than or equal to the one specified
    # @param [Integer] max_id Optional parameter: Returns events with an id less
    # than or equal to the one specified
    # @param [Direction] direction Optional parameter: The sort direction of the
    # returned events.
    # @param [Array[EventType]] filter Optional parameter: You can pass multiple
    # event keys after comma. Use in query
    # `filter=signup_success,payment_success`.
    # @return [CountResponse] response from the API call
    def read_events_count(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/events/count.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['since_id'], key: 'since_id'))
                   .query_param(new_parameter(options['max_id'], key: 'max_id'))
                   .query_param(new_parameter(options['direction'], key: 'direction'))
                   .query_param(new_parameter(options['filter'], key: 'filter'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CountResponse.method(:from_hash)))
        .execute
    end
  end
end
