# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupsController
  class SubscriptionGroupsController < BaseController
    # Create multiple subscriptions at once under the same customer and
    # consolidate them into a subscription group.
    # You must provide one and only one of the
    # `payer_id`/`payer_reference`/`payer_attributes` for the customer attached
    # to the group.
    # You must provide one and only one of the
    # `payment_profile_id`/`credit_card_attributes`/`bank_account_attributes`
    # for the payment profile attached to the group.
    # Only one of the `subscriptions` can have `"primary": true` attribute set.
    # When passing product to a subscription you can use either `product_id` or
    # `product_handle` or `offer_id`. You can also use `custom_price` instead.
    # @param [SubscriptionGroupSignupRequest] body Optional parameter:
    # Example:
    # @return [SubscriptionGroupSignupResponse] response from the API call
    def signup_with_subscription_group(body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscription_groups/signup.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SubscriptionGroupSignupResponse.method(:from_hash))
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         SubscriptionGroupSignupErrorResponseException))
        .execute
    end

    # Creates a subscription group with given members.
    # @param [CreateSubscriptionGroupRequest] body Optional parameter:
    # Example:
    # @return [SubscriptionGroupResponse] response from the API call
    def create_subscription_group(body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscription_groups.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SubscriptionGroupResponse.method(:from_hash))
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         SubscriptionGroupCreateErrorResponseException))
        .execute
    end

    # Returns an array of subscription groups for the site. The response is
    # paginated and will return a `meta` key with pagination information.
    # #### Account Balance Information
    # Account balance information for the subscription groups is not returned by
    # default. If this information is desired, the `include[]=account_balances`
    # parameter must be provided with the request.
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
    # @param [Array[SubscriptionGroupsListInclude]] include Optional parameter:
    # A list of additional information to include in the response. The following
    # values are supported:  - `account_balances`: Account balance information
    # for the subscription groups. Use in query: `include[]=account_balances`
    # @return [ListSubscriptionGroupsResponse] response from the API call
    def list_subscription_groups(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscription_groups.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['include'], key: 'include'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::UN_INDEXED))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListSubscriptionGroupsResponse.method(:from_hash)))
        .execute
    end

    # Use this endpoint to find subscription group details.
    # #### Current Billing Amount in Cents
    # Current billing amount for the subscription group is not returned by
    # default. If this information is desired, the
    # `include[]=current_billing_amount_in_cents` parameter must be provided
    # with the request.
    # @param [String] uid Required parameter: The uid of the subscription
    # group
    # @param [Array[SubscriptionGroupInclude]] include Optional parameter:
    # Allows including additional data in the response. Use in query:
    # `include[]=current_billing_amount_in_cents`.
    # @return [FullSubscriptionGroupResponse] response from the API call
    def read_subscription_group(uid,
                                include: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscription_groups/{uid}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(uid, key: 'uid')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(include, key: 'include'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::UN_INDEXED))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(FullSubscriptionGroupResponse.method(:from_hash)))
        .execute
    end

    # Use this endpoint to update subscription group members.
    # `"member_ids"` should contain an array of both subscription IDs to set as
    # group members and subscription IDs already present in the groups. Not
    # including them will result in removing them from subscription group. To
    # clean up members, just leave the array empty.
    # @param [String] uid Required parameter: The uid of the subscription
    # group
    # @param [UpdateSubscriptionGroupRequest] body Optional parameter:
    # Example:
    # @return [SubscriptionGroupResponse] response from the API call
    def update_subscription_group_members(uid,
                                          body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/subscription_groups/{uid}.json',
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
                   .deserialize_into(SubscriptionGroupResponse.method(:from_hash))
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         SubscriptionGroupUpdateErrorResponseException))
        .execute
    end

    # Use this endpoint to delete subscription group.
    # Only groups without members can be deleted
    # @param [String] uid Required parameter: The uid of the subscription
    # group
    # @return [DeleteSubscriptionGroupResponse] response from the API call
    def delete_subscription_group(uid)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/subscription_groups/{uid}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(uid, key: 'uid')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DeleteSubscriptionGroupResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException))
        .execute
    end

    # Use this endpoint to find subscription group associated with subscription.
    # If the subscription is not in a group endpoint will return 404 code.
    # @param [String] subscription_id Required parameter: The Chargify id of the
    # subscription associated with the subscription group
    # @return [FullSubscriptionGroupResponse] response from the API call
    def find_subscription_group(subscription_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscription_groups/lookup.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(subscription_id, key: 'subscription_id')
                                 .is_required(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(FullSubscriptionGroupResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException))
        .execute
    end

    # For sites making use of the [Relationship
    # Billing](https://chargify.zendesk.com/hc/en-us/articles/4407737494171) and
    # [Customer
    # Hierarchy](https://chargify.zendesk.com/hc/en-us/articles/4407746683291)
    # features, it is possible to add existing subscriptions to subscription
    # groups.
    # Passing `group` parameters with a `target` containing a `type` and
    # optional `id` is all that's needed. When the `target` parameter specifies
    # a `"customer"` or `"subscription"` that is already part of a hierarchy,
    # the subscription will become a member of the customer's subscription
    # group.  If the target customer or subscription is not part of a
    # subscription group, a new group will be created and the subscription will
    # become part of the group with the specified target customer set as the
    # responsible payer for the group's subscriptions.
    # **Please Note:** In order to add an existing subscription to a
    # subscription group, it must belong to either the same customer record as
    # the target, or be within the same customer hierarchy.
    # Rather than specifying a customer, the `target` parameter could instead
    # simply have a value of
    # * `"self"` which indicates the subscription will be paid for not by some
    # other customer, but by the subscribing customer,
    # * `"parent"` which indicates the subscription will be paid for by the
    # subscribing customer's parent within a customer hierarchy, or
    # * `"eldest"` which indicates the subscription will be paid for by the
    # root-level customer in the subscribing customer's hierarchy.
    # To create a new subscription into a subscription group, please reference
    # the following:
    # [Create Subscription in a Subscription
    # Group](https://developers.chargify.com/docs/api-docs/d571659cf0f24-create-
    # subscription#subscription-in-a-subscription-group)
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @param [AddSubscriptionToAGroup] body Optional parameter: Example:
    # @return [SubscriptionGroupResponse] response from the API call
    def add_subscription_to_group(subscription_id,
                                  body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/group.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SubscriptionGroupResponse.method(:from_hash)))
        .execute
    end

    # For sites making use of the [Relationship
    # Billing](https://chargify.zendesk.com/hc/en-us/articles/4407737494171) and
    # [Customer
    # Hierarchy](https://chargify.zendesk.com/hc/en-us/articles/4407746683291)
    # features, it is possible to remove existing subscription from subscription
    # group.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @return [void] response from the API call
    def remove_subscription_from_group(subscription_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/subscriptions/{subscription_id}/group.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .is_response_void(true)
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
