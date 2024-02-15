# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupInvoiceAccountController
  class SubscriptionGroupInvoiceAccountController < BaseController
    # A prepayment can be added for a subscription group identified by the
    # group's `uid`. This endpoint requires a `amount`, `details`, `method`, and
    # `memo`. On success, the prepayment will be added to the group's prepayment
    # balance.
    # @param [String] uid Required parameter: The uid of the subscription
    # group
    # @param [SubscriptionGroupPrepaymentRequest] body Optional parameter:
    # Example:
    # @return [SubscriptionGroupPrepaymentResponse] response from the API call
    def create_subscription_group_prepayment(uid,
                                             body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscription_groups/{uid}/prepayments.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(uid, key: 'uid')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SubscriptionGroupPrepaymentResponse.method(:from_hash))
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorListResponseException))
        .execute
    end

    # This request will list a subscription group's prepayments.
    # @param [String] uid Required parameter: The uid of the subscription
    # group
    # @param [ListSubscriptionGroupPrepaymentDateField] filter_date_field
    # Optional parameter: The type of filter you would like to apply to your
    # search. Use in query: `filter[date_field]=created_at`.
    # @param [Date] filter_end_date Optional parameter: The end date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns prepayments with
    # a timestamp up to and including 11:59:59PM in your site's time zone on the
    # date specified. Use in query: `filter[end_date]=2011-12-15`.
    # @param [Date] filter_start_date Optional parameter: The start date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns prepayments with
    # a timestamp at or after midnight (12:00:00 AM) in your site's time zone on
    # the date specified. Use in query: `filter[start_date]=2011-12-15`.
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
    # @return [ListSubscriptionGroupPrepaymentResponse] response from the API call
    def list_prepayments_for_subscription_group(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscription_groups/{uid}/prepayments.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['uid'], key: 'uid')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['filter_date_field'], key: 'filter[date_field]'))
                   .query_param(new_parameter(options['filter_end_date'], key: 'filter[end_date]'))
                   .query_param(new_parameter(options['filter_start_date'], key: 'filter[start_date]'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListSubscriptionGroupPrepaymentResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException))
        .execute
    end

    # Credit can be issued for a subscription group identified by the group's
    # `uid`. Credit will be added to the group in the amount specified in the
    # request body. The credit will be applied to group member invoices as they
    # are generated.
    # @param [String] uid Required parameter: The uid of the subscription
    # group
    # @param [IssueServiceCreditRequest] body Optional parameter: Example:
    # @return [ServiceCreditResponse] response from the API call
    def issue_subscription_group_service_credit(uid,
                                                body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscription_groups/{uid}/service_credits.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(uid, key: 'uid')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ServiceCreditResponse.method(:from_hash))
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorListResponseException))
        .execute
    end

    # Credit can be deducted for a subscription group identified by the group's
    # `uid`. Credit will be deducted from the group in the amount specified in
    # the request body.
    # @param [String] uid Required parameter: The uid of the subscription
    # group
    # @param [DeductServiceCreditRequest] body Optional parameter: Example:
    # @return [ServiceCredit] response from the API call
    def deduct_subscription_group_service_credit(uid,
                                                 body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscription_groups/{uid}/service_credit_deductions.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(uid, key: 'uid')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ServiceCredit.method(:from_hash))
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorListResponseException))
        .execute
    end
  end
end
