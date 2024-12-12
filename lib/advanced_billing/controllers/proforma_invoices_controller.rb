# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ProformaInvoicesController
  class ProformaInvoicesController < BaseController
    # This endpoint will trigger the creation of a consolidated proforma invoice
    # asynchronously. It will return a 201 with no message, or a 422 with any
    # errors. To find and view the new consolidated proforma invoice, you may
    # poll the subscription group listing for proforma invoices; only one
    # consolidated proforma invoice may be created per group at a time.
    # If the information becomes outdated, simply void the old consolidated
    # proforma invoice and generate a new one.
    # ## Restrictions
    # Proforma invoices are only available on Relationship Invoicing sites. To
    # create a proforma invoice, the subscription must not be prepaid, and must
    # be in a live state.
    # @param [String] uid Required parameter: The uid of the subscription
    # group
    # @return [void] response from the API call.
    def create_consolidated_proforma_invoice(uid)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscription_groups/{uid}/proforma_invoices.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(uid, key: 'uid')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .is_response_void(true)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # Only proforma invoices with a `consolidation_level` of parent are
    # returned.
    # By default, proforma invoices returned on the index will only include
    # totals, not detailed breakdowns for `line_items`, `discounts`, `taxes`,
    # `credits`, `payments`, `custom_fields`. To include breakdowns, pass the
    # specific field as a key in the query with a value set to true.
    # @param [String] uid Required parameter: The uid of the subscription
    # group
    # @param [TrueClass | FalseClass] line_items Optional parameter: Include
    # line items data
    # @param [TrueClass | FalseClass] discounts Optional parameter: Include
    # discounts data
    # @param [TrueClass | FalseClass] taxes Optional parameter: Include taxes
    # data
    # @param [TrueClass | FalseClass] credits Optional parameter: Include
    # credits data
    # @param [TrueClass | FalseClass] payments Optional parameter: Include
    # payments data
    # @param [TrueClass | FalseClass] custom_fields Optional parameter: Include
    # custom fields data
    # @return [ListProformaInvoicesResponse] response from the API call.
    def list_subscription_group_proforma_invoices(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscription_groups/{uid}/proforma_invoices.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(options['uid'], key: 'uid')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['line_items'], key: 'line_items'))
                   .query_param(new_parameter(options['discounts'], key: 'discounts'))
                   .query_param(new_parameter(options['taxes'], key: 'taxes'))
                   .query_param(new_parameter(options['credits'], key: 'credits'))
                   .query_param(new_parameter(options['payments'], key: 'payments'))
                   .query_param(new_parameter(options['custom_fields'], key: 'custom_fields'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListProformaInvoicesResponse.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException))
        .execute
    end

    # Use this endpoint to read the details of an existing proforma invoice.
    # ## Restrictions
    # Proforma invoices are only available on Relationship Invoicing sites.
    # @param [String] proforma_invoice_uid Required parameter: The uid of the
    # proforma invoice
    # @return [ProformaInvoice] response from the API call.
    def read_proforma_invoice(proforma_invoice_uid)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/proforma_invoices/{proforma_invoice_uid}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(proforma_invoice_uid, key: 'proforma_invoice_uid')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ProformaInvoice.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException))
        .execute
    end

    # This endpoint will create a proforma invoice and return it as a response.
    # If the information becomes outdated, simply void the old proforma invoice
    # and generate a new one.
    # If you would like to preview the next billing amounts without generating a
    # full proforma invoice, please use the renewal preview endpoint.
    # ## Restrictions
    # Proforma invoices are only available on Relationship Invoicing sites. To
    # create a proforma invoice, the subscription must not be in a group, must
    # not be prepaid, and must be in a live state.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @return [ProformaInvoice] response from the API call.
    def create_proforma_invoice(subscription_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/proforma_invoices.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ProformaInvoice.method(:from_hash))
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # By default, proforma invoices returned on the index will only include
    # totals, not detailed breakdowns for `line_items`, `discounts`, `taxes`,
    # `credits`, `payments`, or `custom_fields`. To include breakdowns, pass the
    # specific field as a key in the query with a value set to `true`.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @param [String] start_date Optional parameter: The beginning date range
    # for the invoice's Due Date, in the YYYY-MM-DD format.
    # @param [String] end_date Optional parameter: The ending date range for the
    # invoice's Due Date, in the YYYY-MM-DD format.
    # @param [ProformaInvoiceStatus] status Optional parameter: The current
    # status of the invoice.  Allowed Values: draft, open, paid, pending,
    # voided
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
    # @param [Direction] direction Optional parameter: The sort direction of the
    # returned invoices.
    # @param [TrueClass | FalseClass] line_items Optional parameter: Include
    # line items data
    # @param [TrueClass | FalseClass] discounts Optional parameter: Include
    # discounts data
    # @param [TrueClass | FalseClass] taxes Optional parameter: Include taxes
    # data
    # @param [TrueClass | FalseClass] credits Optional parameter: Include
    # credits data
    # @param [TrueClass | FalseClass] payments Optional parameter: Include
    # payments data
    # @param [TrueClass | FalseClass] custom_fields Optional parameter: Include
    # custom fields data
    # @return [ListProformaInvoicesResponse] response from the API call.
    def list_proforma_invoices(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions/{subscription_id}/proforma_invoices.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(options['subscription_id'], key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['start_date'], key: 'start_date'))
                   .query_param(new_parameter(options['end_date'], key: 'end_date'))
                   .query_param(new_parameter(options['status'], key: 'status'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['direction'], key: 'direction'))
                   .query_param(new_parameter(options['line_items'], key: 'line_items'))
                   .query_param(new_parameter(options['discounts'], key: 'discounts'))
                   .query_param(new_parameter(options['taxes'], key: 'taxes'))
                   .query_param(new_parameter(options['credits'], key: 'credits'))
                   .query_param(new_parameter(options['payments'], key: 'payments'))
                   .query_param(new_parameter(options['custom_fields'], key: 'custom_fields'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListProformaInvoicesResponse.method(:from_hash)))
        .execute
    end

    # This endpoint will void a proforma invoice that has the status "draft".
    # ## Restrictions
    # Proforma invoices are only available on Relationship Invoicing sites.
    # Only proforma invoices that have the appropriate status may be reopened.
    # If the invoice identified by {uid} does not have the appropriate status,
    # the response will have HTTP status code 422 and an error message.
    # A reason for the void operation is required to be included in the request
    # body. If one is not provided, the response will have HTTP status code 422
    # and an error message.
    # @param [String] proforma_invoice_uid Required parameter: The uid of the
    # proforma invoice
    # @param [VoidInvoiceRequest] body Optional parameter: Example:
    # @return [ProformaInvoice] response from the API call.
    def void_proforma_invoice(proforma_invoice_uid,
                              body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/proforma_invoices/{proforma_invoice_uid}/void.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(proforma_invoice_uid, key: 'proforma_invoice_uid')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ProformaInvoice.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # Return a preview of the data that will be included on a given
    # subscription's proforma invoice if one were to be generated. It will have
    # similar line items and totals as a renewal preview, but the response will
    # be presented in the format of a proforma invoice. Consequently it will
    # include additional information such as the name and addresses that will
    # appear on the proforma invoice.
    # The preview endpoint is subject to all the same conditions as the proforma
    # invoice endpoint. For example, previews are only available on the
    # Relationship Invoicing architecture, and previews cannot be made for
    # end-of-life subscriptions.
    # If all the data returned in the preview is as expected, you may then
    # create a static proforma invoice and send it to your customer. The data
    # within a preview will not be saved and will not be accessible after the
    # call is made.
    # Alternatively, if you have some proforma invoices already, you may make a
    # preview call to determine whether any billing information for the
    # subscription's upcoming renewal has changed.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @return [ProformaInvoice] response from the API call.
    def preview_proforma_invoice(subscription_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/proforma_invoices/preview.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ProformaInvoice.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # This endpoint is only available for Relationship Invoicing sites. It
    # cannot be used to create consolidated proforma invoices or preview prepaid
    # subscriptions.
    # Create a proforma invoice to preview costs before a subscription's signup.
    # Like other proforma invoices, it can be emailed to the customer, voided,
    # and publicly viewed on the chargifypay domain.
    # Pass a payload that resembles a subscription create or signup preview
    # request. For example, you can specify components, coupons/a referral,
    # offers, custom pricing, and an existing customer or payment profile to
    # populate a shipping or billing address.
    # A product and customer first name, last name, and email are the minimum
    # requirements. We recommend associating the proforma invoice with a
    # customer_id to easily find their proforma invoices, since the
    # subscription_id will always be blank.
    # @param [CreateSubscriptionRequest] body Optional parameter: Example:
    # @return [ProformaInvoice] response from the API call.
    def create_signup_proforma_invoice(body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/proforma_invoices.json',
                                     Server::PRODUCTION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ProformaInvoice.method(:from_hash))
                    .local_error_template('400',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ProformaBadRequestErrorResponseException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorArrayMapResponseException))
        .execute
    end

    # This endpoint is only available for Relationship Invoicing sites. It
    # cannot be used to create consolidated proforma invoice previews or preview
    # prepaid subscriptions.
    # Create a signup preview in the format of a proforma invoice to preview
    # costs before a subscription's signup. You have the option of optionally
    # previewing the first renewal's costs as well. The proforma invoice preview
    # will not be persisted.
    # Pass a payload that resembles a subscription create or signup preview
    # request. For example, you can specify components, coupons/a referral,
    # offers, custom pricing, and an existing customer or payment profile to
    # populate a shipping or billing address.
    # A product and customer first name, last name, and email are the minimum
    # requirements.
    # @param [CreateSignupProformaPreviewInclude] include Optional parameter:
    # Choose to include a proforma invoice preview for the first renewal. Use in
    # query `include=next_proforma_invoice`.
    # @param [CreateSubscriptionRequest] body Optional parameter: Example:
    # @return [SignupProformaPreviewResponse] response from the API call.
    def preview_signup_proforma_invoice(include: nil,
                                        body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/proforma_invoices/preview.json',
                                     Server::PRODUCTION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .query_param(new_parameter(include, key: 'include'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SignupProformaPreviewResponse.method(:from_hash))
                    .local_error_template('400',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ProformaBadRequestErrorResponseException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorArrayMapResponseException))
        .execute
    end
  end
end
