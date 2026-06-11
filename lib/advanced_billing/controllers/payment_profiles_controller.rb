# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # PaymentProfilesController
  class PaymentProfilesController < BaseController
    # Creates a payment profile for a customer.
    # When you create a new payment profile for a customer via the API, it does
    # not automatically make the profile current for any of the customer’s
    # subscriptions. To use the payment profile as the default, you must set it
    # explicitly for the subscription or subscription group.
    # Select an option from the **Request Examples** drop-down on the right side
    # of the portal to see examples of common scenarios for creating payment
    # profiles.
    # Do not use real card information for testing. See the Sites articles that
    # cover [testing your site
    # setup](https://docs.maxio.com/hc/en-us/articles/24250712113165-Testing-Ove
    # rview#testing-overview-0-0) for more details on testing in your sandbox.
    # Note that collecting and sending raw card details in production requires
    # [PCI
    # compliance](https://docs.maxio.com/hc/en-us/articles/24183956938381-PCI-Co
    # mpliance#pci-compliance-0-0) on your end. If your business is not PCI
    # compliant, use [Maxio.js (formerly
    # Chargify.js)](https://docs.maxio.com/hc/en-us/articles/38163190843789-Char
    # gify-js-Overview#chargify-js-overview-0-0) to collect credit card or bank
    # account information.
    # See the following articles to learn more about subscriptions and payments:
    # + [Subscriber Payment
    # Details](https://maxio.zendesk.com/hc/en-us/articles/24251599929613-Subscr
    # iption-Summary-Payment-Details-Tab)
    # + [Self Service
    # Pages](https://maxio.zendesk.com/hc/en-us/articles/24261425318541-Self-Ser
    # vice-Pages) (Allows credit card updates by Subscriber)
    # + [Public Signup Pages payment
    # settings](https://maxio.zendesk.com/hc/en-us/articles/24261368332557-Indiv
    # idual-Page-Settings)
    # +
    # [Taxes](https://developers.chargify.com/docs/developer-docs/d2e9e34db740e-
    # signups#taxes)
    # + [Maxio.js (formerly
    # Chargify.js)](https://docs.maxio.com/hc/en-us/articles/38163190843789-Char
    # gify-js-Overview)
    #     + [Maxio.js with GoCardless - minimal
    # example](https://docs.maxio.com/hc/en-us/articles/38206331271693-Examples#
    # h_01K0PJ15QQZKCER8CFK40MR6XJ)
    #     + [Maxio.js with GoCardless - full
    # example](https://docs.maxio.com/hc/en-us/articles/38206331271693-Examples#
    # h_01K0PJ15QR09JVHWW0MCA7HVJV)
    #     + [Maxio.js with Stripe Direct Debit - minimal
    # example](https://docs.maxio.com/hc/en-us/articles/38206331271693-Examples#
    # h_01K0PJ15QQFKKN8Z7B7DZ9AJS5)
    #     + [Maxio.js with Stripe Direct Debit - full
    # example](https://docs.maxio.com/hc/en-us/articles/38206331271693-Examples#
    # h_01K0PJ15QRECQQ4ECS3ZA55GY7)
    #     + [Maxio.js with Stripe BECS Direct Debit - minimal
    # example](https://developers.chargify.com/docs/developer-docs/ZG9jOjE0NjAzN
    # DIy-examples#minimal-example-with-sepa-or-becs-direct-debit-stripe-gateway
    # )
    #     + [Maxio.js with Stripe BECS Direct Debit - full
    # example](https://developers.chargify.com/docs/developer-docs/ZG9jOjE0NjAzN
    # DIy-examples#full-example-with-sepa-direct-debit-stripe-gateway)
    # + [Full documentation on
    # GoCardless](https://maxio.zendesk.com/hc/en-us/articles/24176159136909-GoC
    # ardless)
    # + [Full documentation on Stripe SEPA Direct
    # Debit](https://maxio.zendesk.com/hc/en-us/articles/24176170430093-Stripe-S
    # EPA-and-BECS-Direct-Debit)
    # + [Full documentation on Stripe BECS Direct
    # Debit](https://maxio.zendesk.com/hc/en-us/articles/24176170430093-Stripe-S
    # EPA-and-BECS-Direct-Debit)
    # + [Full documentation on Stripe BACS Direct
    # Debit](https://maxio.zendesk.com/hc/en-us/articles/24176170430093-Stripe-S
    # EPA-and-BECS-Direct-Debit)
    # ## 3D Secure (3DS) Authentication post-authentication flow
    # When a payment requires 3DS Authentication to adhere to Strong Customer
    # Authentication (SCA), the request enters a post-authentication flow where
    # a 422 Unprocessable Entity status is returned with an action_link that
    # will direct the customer through 3DS Authentication.
    # See the [3D Secure Post-Authentication
    # Flow](https://docs.maxio.com/hc/en-us/articles/44277749524365-3D-Secure-Po
    # st-Authentication-Flow) article in the product documentation to learn how
    # to manage the redirect flow.
    # @param [CreatePaymentProfileRequest] body Optional parameter: When
    # following the IBAN or the Local Bank details examples, a customer, bank
    # account and mandate will be created in your current vault. If the
    # customer, bank account, and mandate already exist in your vault, follow
    # the Import example to link the payment profile into Advanced Billing.
    # @return [PaymentProfileResponse] Response from the API call.
    def create_payment_profile(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/payment_profiles.json',
                                     Server::PRODUCTION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentProfileResponse.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # Returns all active payment profiles for a site, or for one customer within
    # a site. If no payment profiles are found, this endpoint will return an
    # empty array, not a 404.
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
    # @param [Integer] customer_id Optional parameter: The ID of the customer
    # for which you wish to list payment profiles
    # @return [Array[PaymentProfileResponse]] Response from the API call.
    def list_payment_profiles(options = {})
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/payment_profiles.json',
                                     Server::PRODUCTION)
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['customer_id'], key: 'customer_id'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentProfileResponse.method(:from_hash))
                    .is_response_array(true))
        .execute
    end

    # Returns a payment profile identified by its unique ID.
    # Note that a different JSON object will be returned if the card method on
    # file is a bank account.
    # ### Response for Bank Account
    # Example response for Bank Account:
    # ```
    # {
    #   "payment_profile": {
    #     "id": 10089892,
    #     "first_name": "Chester",
    #     "last_name": "Tester",
    #     "created_at": "2025-01-01T00:00:00-05:00",
    #     "updated_at": "2025-01-01T00:00:00-05:00",
    #     "customer_id": 14543792,
    #     "current_vault": "bogus",
    #     "vault_token": "0011223344",
    #     "billing_address": "456 Juniper Court",
    #     "billing_city": "Boulder",
    #     "billing_state": "CO",
    #     "billing_zip": "80302",
    #     "billing_country": "US",
    #     "customer_vault_token": null,
    #     "billing_address_2": "",
    #     "bank_name": "Bank of Kansas City",
    #     "masked_bank_routing_number": "XXXX6789",
    #     "masked_bank_account_number": "XXXX3344",
    #     "bank_account_type": "checking",
    #     "bank_account_holder_type": "personal",
    #     "payment_type": "bank_account",
    #     "site_gateway_setting_id": 1,
    #     "gateway_handle": null
    #   }
    # }
    # ```
    # @param [Integer] payment_profile_id Required parameter: The Chargify id of
    # the payment profile
    # @return [PaymentProfileResponse] Response from the API call.
    def read_payment_profile(payment_profile_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/payment_profiles/{payment_profile_id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(payment_profile_id, key: 'payment_profile_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentProfileResponse.method(:from_hash))
                    .local_error('404',
                                 'Not Found',
                                 APIException))
        .execute
    end

    # Updates a payment profile.
    # ## Partial Card Updates
    # In the event that you are using the Authorize.net, Stripe, Cybersource,
    # Forte or Braintree Blue payment gateways, you can update just the billing
    # and contact information for a payment method. Note the lack of credit-card
    # related data contained in the JSON payload.
    # In this case, the following JSON is acceptable:
    # ```
    # {
    #   "payment_profile": {
    #     "first_name": "Kelly",
    #     "last_name": "Test",
    #     "billing_address": "789 Juniper Court",
    #     "billing_city": "Boulder",
    #     "billing_state": "CO",
    #     "billing_zip": "80302",
    #     "billing_country": "US",
    #     "billing_address_2": null
    #   }
    # }
    # ```
    # The result will be that you have updated the billing information for the
    # card, yet retained the original card number data.
    # ## Specific notes on updating payment profiles
    # - Merchants with **Authorize.net**, **Cybersource**, **Forte**,
    # **Braintree Blue** or **Stripe** as their payment gateway can update their
    # Customer’s credit cards without passing in the full credit card number and
    # CVV.
    # - If you are using **Authorize.net**, **Cybersource**, **Forte**,
    # **Braintree Blue** or **Stripe**, Advanced Billing will ignore the credit
    # card number and CVV when processing an update via the API, and attempt a
    # partial update instead. If you wish to change the card number on a payment
    # profile, you will need to create a new payment profile for the given
    # customer.
    # - A Payment Profile cannot be updated with the attributes of another type
    # of Payment Profile. For example, if the payment profile you are attempting
    # to update is a credit card, you cannot pass in bank account attributes
    # (like `bank_account_number`), and vice versa.
    # - Updating a payment profile directly will not trigger an attempt to
    # capture a past-due balance. If this is the intent, update the card details
    # via the Subscription instead.
    # - If you are using Authorize.net or Stripe, you may elect to manually
    # trigger a retry for a past due subscription after a partial update.
    # @param [Integer] payment_profile_id Required parameter: The Chargify id of
    # the payment profile
    # @param [UpdatePaymentProfileRequest] body Optional parameter: TODO: type
    # description here
    # @return [PaymentProfileResponse] Response from the API call.
    def update_payment_profile(payment_profile_id,
                               body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/payment_profiles/{payment_profile_id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(payment_profile_id, key: 'payment_profile_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentProfileResponse.method(:from_hash))
                    .local_error('404',
                                 'Not Found',
                                 APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorStringMapResponseException))
        .execute
    end

    # Deletes an unused payment profile.
    # If the payment profile is in use by one or more subscriptions or groups, a
    # 422 and error message will be returned.
    # @param [Integer] payment_profile_id Required parameter: The Chargify id of
    # the payment profile
    # @return [void] Response from the API call.
    def delete_unused_payment_profile(payment_profile_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/payment_profiles/{payment_profile_id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(payment_profile_id, key: 'payment_profile_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .is_response_void(true)
                    .local_error('404',
                                 'Not Found',
                                 APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # Deletes a payment profile belonging to the customer on the subscription.
    # + If the customer has multiple subscriptions, the payment profile will be
    # removed from all of them.
    # + If you delete the default payment profile for a subscription, you will
    # need to specify another payment profile to be the default through the api,
    # or either prompt the user to enter a card in the billing portal or on the
    # self-service page, or visit the Payment Details tab on the subscription in
    # the Admin UI and use the “Add New Credit Card” or “Make Active Payment
    # Method” link, (depending on whether there are other cards present).
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [Integer] payment_profile_id Required parameter: The Chargify id of
    # the payment profile
    # @return [void] Response from the API call.
    def delete_subscriptions_payment_profile(subscription_id,
                                             payment_profile_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/subscriptions/{subscription_id}/payment_profiles/{payment_profile_id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(payment_profile_id, key: 'payment_profile_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .is_response_void(true))
        .execute
    end

    # Verifies a bank account. Submit the two small deposit amounts the customer
    # received in their bank account to verify the bank account. (Stripe only)
    # @param [Integer] bank_account_id Required parameter: Identifier of the
    # bank account in the system.
    # @param [BankAccountVerificationRequest] body Optional parameter: TODO:
    # type description here
    # @return [BankAccountResponse] Response from the API call.
    def verify_bank_account(bank_account_id,
                            body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/bank_accounts/{bank_account_id}/verification.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(bank_account_id, key: 'bank_account_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(BankAccountResponse.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # Deletes a Payment Profile belonging to a Subscription Group.
    # **Note**: If the Payment Profile belongs to multiple Subscription Groups
    # and/or Subscriptions, it will be removed from all of them.
    # @param [String] uid Required parameter: The uid of the subscription
    # group
    # @param [Integer] payment_profile_id Required parameter: The Chargify id of
    # the payment profile
    # @return [void] Response from the API call.
    def delete_subscription_group_payment_profile(uid,
                                                  payment_profile_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/subscription_groups/{uid}/payment_profiles/{payment_profile_id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(uid, key: 'uid')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(payment_profile_id, key: 'payment_profile_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .is_response_void(true))
        .execute
    end

    # Changes the default payment profile on the subscription to the existing
    # payment profile with the specified ID.
    # You must elect to change the existing payment profile to a new payment
    # profile ID in order to receive a satisfactory response from this endpoint.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [Integer] payment_profile_id Required parameter: The Chargify id of
    # the payment profile
    # @return [PaymentProfileResponse] Response from the API call.
    def change_subscription_default_payment_profile(subscription_id,
                                                    payment_profile_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/payment_profiles/{payment_profile_id}/change_payment_profile.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(payment_profile_id, key: 'payment_profile_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentProfileResponse.method(:from_hash))
                    .local_error('404',
                                 'Not Found',
                                 APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # This will change the default payment profile on the subscription group to
    # the existing payment profile with the id specified.
    # You must elect to change the existing payment profile to a new payment
    # profile ID in order to receive a satisfactory response from this endpoint.
    # The new payment profile must belong to the subscription group's customer,
    # otherwise you will receive an error.
    # @param [String] uid Required parameter: The uid of the subscription
    # group
    # @param [Integer] payment_profile_id Required parameter: The Chargify id of
    # the payment profile
    # @return [PaymentProfileResponse] Response from the API call.
    def change_subscription_group_default_payment_profile(uid,
                                                          payment_profile_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscription_groups/{uid}/payment_profiles/{payment_profile_id}/change_payment_profile.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(uid, key: 'uid')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(payment_profile_id, key: 'payment_profile_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentProfileResponse.method(:from_hash))
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # One Time Tokens aka Advanced Billing Tokens house the credit card or ACH
    # (Authorize.Net or Stripe only) data for a customer.
    # You can use One Time Tokens while creating a subscription or payment
    # profile instead of passing all bank account or credit card data directly
    # to a given API endpoint.
    # To obtain a One Time Token you have to use
    # [Chargify.js](https://docs.maxio.com/hc/en-us/articles/38163190843789-Char
    # gify-js-Overview#chargify-js-overview-0-0).
    # @param [String] chargify_token Required parameter: Advanced Billing
    # Token
    # @return [GetOneTimeTokenRequest] Response from the API call.
    def read_one_time_token(chargify_token)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/one_time_tokens/{chargify_token}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(chargify_token, key: 'chargify_token')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetOneTimeTokenRequest.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          ErrorListResponseException))
        .execute
    end

    # You can send a "request payment update" email to the customer associated
    # with the subscription.
    # If you attempt to send a "request payment update" email more than five
    # times within a 30-minute period, you will receive a `422` response with an
    # error message in the body. This error message will indicate that the
    # request has been rejected due to excessive attempts, and will provide
    # instructions on how to resubmit the request.
    # Additionally, if you attempt to send a "request payment update" email for
    # a subscription that does not exist, you will receive a `404` error
    # response. This error message will indicate that the subscription could not
    # be found, and will provide instructions on how to correct the error and
    # resubmit the request.
    # These error responses are designed to prevent excessive or invalid
    # requests, and to provide clear and helpful information to users who
    # encounter errors during the request process.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @return [void] Response from the API call.
    def send_request_update_payment_email(subscription_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/request_payment_profiles_update.json',
                                     Server::PRODUCTION)
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
