# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # SubscriptionProductsController
  class SubscriptionProductsController < BaseController
    # Migrates a subscription to a different product.
    # In order to create a migration, you must pass the `product_id` or
    # `product_handle` in the object when you send a POST request. You may also
    # pass either a `product_price_point_id` or `product_price_point_handle` to
    # choose which price point the subscription is moved to. If no price point
    # identifier is passed the subscription will be moved to the products
    # default price point. The response will be the updated subscription.
    # ## Valid Subscriptions
    # Subscriptions should be in the `active` or `trialing` state in order to be
    # migrated.
    # (For backwards compatibility reasons, it is possible to migrate a
    # subscription that is in the `trial_ended` state via the API, however this
    # is not recommended.  Since `trial_ended` is an end-of-life state, the
    # subscription should be canceled, the product changed, and then the
    # subscription can be reactivated.)
    # ## Migrations Documentation
    # Full documentation on how to record Migrations in the Advanced Billing UI
    # can be located
    # [here](https://maxio.zendesk.com/hc/en-us/articles/24181589372429-Data-Mig
    # ration-to-Advanced-Billing).
    # ## Failed Migrations
    # Important note: One of the most common ways that a migration can fail is
    # when the attempt is made to migrate a subscription to its current product.
    # ## 3D Secure (3DS) Authentication post-authentication flow
    # When a payment requires 3DS Authentication to adhere to Strong Customer
    # Authentication (SCA), the request enters a post-authentication flow where
    # a 422 Unprocessable Entity status is returned with an action_link that
    # will direct the customer through 3DS Authentication.
    # See the [3D Secure Post-Authentication
    # Flow](https://docs.maxio.com/hc/en-us/articles/44277749524365-3D-Secure-Po
    # st-Authentication-Flow) article in the product documentation to learn how
    # to manage the redirect flow.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [SubscriptionProductMigrationRequest] body Optional parameter:
    # TODO: type description here
    # @return [SubscriptionResponse] Response from the API call.
    def migrate_subscription_product(subscription_id,
                                     body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/migrations.json',
                                     Server::PRODUCTION)
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
                    .deserialize_into(SubscriptionResponse.method(:from_hash))
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # Previews the charges resulting from migrating a subscription to a
    # different product.
    # ## Previewing a future date
    # It is also possible to preview the migration for a date in the future, as
    # long as it's still within the subscription's current billing period, by
    # passing a `proration_date` along with the request (e.g.,
    # `"proration_date": "2020-12-18T18:25:43.511Z"`).
    # This will calculate the prorated adjustment, charge, payment and credit
    # applied values assuming the migration is done at that date in the future
    # as opposed to right now.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [SubscriptionMigrationPreviewRequest] body Optional parameter:
    # TODO: type description here
    # @return [SubscriptionMigrationPreviewResponse] Response from the API call.
    def preview_subscription_product_migration(subscription_id,
                                               body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/migrations/preview.json',
                                     Server::PRODUCTION)
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
                    .deserialize_into(SubscriptionMigrationPreviewResponse.method(:from_hash))
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end
  end
end
