# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionInvoiceAccountController
  class SubscriptionInvoiceAccountController < BaseController
    # ## Create Prepayment
    # In order to specify a prepayment made against a subscription, specify the
    # `amount, memo, details, method`.
    # When the `method` specified is `"credit_card_on_file"`, the prepayment
    # amount will be collected using the default credit card payment profile and
    # applied to the prepayment account balance.  This is especially useful for
    # manual replenishment of prepaid subscriptions.
    # Please note that you **can't** pass `amount_in_cents`.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @param [CreatePrepaymentRequest] body Optional parameter: Example:
    # @return [CreatePrepaymentResponse] response from the API call
    def create_prepayment(subscription_id,
                          body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/prepayments.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CreatePrepaymentResponse.method(:from_hash)))
        .execute
    end

    # Returns the `balance_in_cents` of the Subscription's Pending Discount,
    # Service Credit, and Prepayment accounts, as well as the sum of the
    # Subscription's open, payable invoices.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @return [AccountBalances] response from the API call
    def read_account_balances(subscription_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions/{subscription_id}/account_balances.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(AccountBalances.method(:from_hash)))
        .execute
    end

    # This request will list a subscription's prepayments.
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
    # @param [BasicDateField] filter_date_field Optional parameter: The type of
    # filter you would like to apply to your search. created_at - Time when
    # prepayment was created. application_at - Time when prepayment was applied
    # to invoice. Use in query `filter[date_field]=created_at`.
    # @param [Date] filter_start_date Optional parameter: The start date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns prepayments with
    # a timestamp at or after midnight (12:00:00 AM) in your site’s time zone on
    # the date specified. Use in query `filter[start_date]=2011-12-15`.
    # @param [Date] filter_end_date Optional parameter: The end date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns prepayments with
    # a timestamp up to and including 11:59:59PM in your site’s time zone on the
    # date specified. Use in query `filter[end_date]=2011-12-15`.
    # @return [PrepaymentsResponse] response from the API call
    def list_prepayments(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions/{subscription_id}/prepayments.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['subscription_id'], key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['filter_date_field'], key: 'filter[date_field]'))
                   .query_param(new_parameter(options['filter_start_date'], key: 'filter[start_date]'))
                   .query_param(new_parameter(options['filter_end_date'], key: 'filter[end_date]'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(PrepaymentsResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException))
        .execute
    end

    # Credit will be added to the subscription in the amount specified in the
    # request body. The credit is subsequently applied to the next generated
    # invoice.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @param [IssueServiceCreditRequest] body Optional parameter: Example:
    # @return [ServiceCredit] response from the API call
    def issue_service_credit(subscription_id,
                             body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/service_credits.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ServiceCredit.method(:from_hash)))
        .execute
    end

    # Credit will be removed from the subscription in the amount specified in
    # the request body. The credit amount being deducted must be equal to or
    # less than the current credit balance.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @param [DeductServiceCreditRequest] body Optional parameter: Example:
    # @return [void] response from the API call
    def deduct_service_credit(subscription_id,
                              body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/service_credit_deductions.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorListResponseException))
        .execute
    end

    # This endpoint will refund, completely or partially, a particular
    # prepayment applied to a subscription. The `prepayment_id` will be the
    # account transaction ID of the original payment. The prepayment must have
    # some amount remaining in order to be refunded.
    # The amount may be passed either as a decimal, with `amount`, or an integer
    # in cents, with `amount_in_cents`.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @param [String] prepayment_id Required parameter: id of prepayment
    # @param [RefundPrepaymentRequest] body Optional parameter: Example:
    # @return [PrepaymentResponse] response from the API call
    def refund_prepayment(subscription_id,
                          prepayment_id,
                          body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/prepayments/{prepayment_id}/refunds.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(prepayment_id, key: 'prepayment_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(PrepaymentResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException)
                   .local_error_template('400',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         RefundPrepaymentBaseErrorsResponseException)
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         RefundPrepaymentAggregatedErrorsResponseException))
        .execute
    end
  end
end
