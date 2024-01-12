# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InsightsController
  class InsightsController < BaseController
    # The Stats API is a very basic view of some Site-level stats. This API call
    # only answers with JSON responses. An XML version is not provided.
    # ## Stats Documentation
    # There currently is not a complimentary matching set of documentation that
    # compliments this endpoint. However, each Site's dashboard will reflect the
    # summary of information provided in the Stats reposnse.
    # ```
    # https://subdomain.chargify.com/dashboard
    # ```
    # @return [SiteSummary] response from the API call
    def read_site_stats
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stats.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SiteSummary.method(:from_hash)))
        .execute
    end

    # This endpoint returns your site's current MRR, including plan and usage
    # breakouts.
    # @param [DateTime] at_time Optional parameter: submit a timestamp in
    # ISO8601 format to request MRR for a historic time
    # @param [Integer] subscription_id Optional parameter: submit the id of a
    # subscription in order to limit results
    # @return [MRRResponse] response from the API call
    def read_mrr(at_time: nil,
                 subscription_id: nil)
      warn 'Endpoint read_mrr in InsightsController is deprecated'
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/mrr.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(at_time, key: 'at_time'))
                   .query_param(new_parameter(subscription_id, key: 'subscription_id'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(MRRResponse.method(:from_hash)))
        .execute
    end

    # This endpoint returns your site's MRR movements.
    # ## Understanding MRR movements
    # This endpoint will aid in accessing your site's [MRR
    # Report](https://chargify.zendesk.com/hc/en-us/articles/4407838249627)
    # data.
    # Whenever a subscription event occurs that causes your site's MRR to change
    # (such as a signup or upgrade), we record an MRR movement. These records
    # are accessible via the MRR Movements endpoint.
    # Each MRR Movement belongs to a subscription and contains a timestamp,
    # category, and an amount. `line_items` represent the subscription's product
    # configuration at the time of the movement.
    # ### Plan & Usage Breakouts
    # In the MRR Report UI, we support a setting to [include or
    # exclude](https://chargify.zendesk.com/hc/en-us/articles/4407838249627#disp
    # laying-component-based-metered-usage-in-mrr) usage revenue. In the MRR
    # APIs, responses include `plan` and `usage` breakouts.
    # Plan includes revenue from:
    # * Products
    # * Quantity-Based Components
    # * On/Off Components
    # Usage includes revenue from:
    # * Metered Components
    # * Prepaid Usage Components
    # @param [Integer] subscription_id Optional parameter: optionally filter
    # results by subscription
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request. Default value is 10. The maximum
    # allowed values is 50; any per_page value over 50 will be changed to 50.
    # Use in query `per_page=20`.
    # @param [SortingDirection] direction Optional parameter: Controls the order
    # in which results are returned. Use in query `direction=asc`.
    # @return [ListMRRResponse] response from the API call
    def read_mrr_movements(options = {})
      warn 'Endpoint read_mrr_movements in InsightsController is deprecated'
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/mrr_movements.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['subscription_id'], key: 'subscription_id'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['direction'], key: 'direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListMRRResponse.method(:from_hash)))
        .execute
    end

    # This endpoint returns your site's current MRR, including plan and usage
    # breakouts split per subscription.
    # @param [Array[Integer]] filter_subscription_ids Optional parameter: Submit
    # ids in order to limit results. Use in query:
    # `filter[subscription_ids]=1,2,3`.
    # @param [String] at_time Optional parameter: Submit a timestamp in ISO8601
    # format to request MRR for a historic time. Use in query:
    # `at_time=2022-01-10T10:00:00-05:00`.
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
    # @param [Direction] direction Optional parameter: Controls the order in
    # which results are returned. Records are ordered by subscription_id in
    # ascending order by default. Use in query `direction=desc`.
    # @return [SubscriptionMRRResponse] response from the API call
    def list_mrr_per_subscription(options = {})
      warn 'Endpoint list_mrr_per_subscription in InsightsController is deprec'\
           'ated'
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions_mrr.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['filter_subscription_ids'], key: 'filter[subscription_ids]'))
                   .query_param(new_parameter(options['at_time'], key: 'at_time'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['direction'], key: 'direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global'))

                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SubscriptionMRRResponse.method(:from_hash))
                   .local_error_template('400',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         SubscriptionsMrrErrorResponseException))
        .execute
    end
  end
end
