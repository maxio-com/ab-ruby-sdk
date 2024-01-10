# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # AdvanceInvoiceController
  class AdvanceInvoiceController < BaseController
    # Generate an invoice in advance for a subscription's next renewal date.
    # [Please see our
    # docs](reference/Chargify-API.v1.yaml/components/schemas/Invoice) for more
    # information on advance invoices, including eligibility on generating one;
    # for the most part, they function like any other invoice, except they are
    # issued early and have special behavior upon being voided.
    # A subscription may only have one advance invoice per billing period.
    # Attempting to issue an advance invoice when one already exists will return
    # an error.
    # That said, regeneration of the invoice may be forced with the params
    # `force: true`, which will void an advance invoice if one exists and
    # generate a new one. If no advance invoice exists, a new one will be
    # generated.
    # We recommend using either the create or preview endpoints for proforma
    # invoices to preview this advance invoice before using this endpoint to
    # generate it.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @param [IssueAdvanceInvoiceRequest] body Optional parameter: Example:
    # @return [Invoice] response from the API call
    def issue_advance_invoice(subscription_id,
                              body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/advance_invoice/issue.json',
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
                   .deserialize_into(Invoice.method(:from_hash))
                   .local_error('403',
                                'Forbidden',
                                APIException)
                   .local_error('404',
                                'Not Found',
                                APIException)
                   .local_error('422',
                                'Unprocessable Entity (WebDAV)',
                                ErrorListResponseException))
        .execute
    end

    # Once an advance invoice has been generated for a subscription's upcoming
    # renewal, it can be viewed through this endpoint. There can only be one
    # advance invoice per subscription per billing cycle.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @return [Invoice] response from the API call
    def read_advance_invoice(subscription_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions/{subscription_id}/advance_invoice.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Invoice.method(:from_hash))
                   .local_error('403',
                                'Forbidden',
                                APIException)
                   .local_error('404',
                                'Not Found',
                                APIException))
        .execute
    end

    # Void a subscription's existing advance invoice. Once voided, it can later
    # be regenerated if desired.
    # A `reason` is required in order to void, and the invoice must have an open
    # status. Voiding will cause any prepayments and credits that were applied
    # to the invoice to be returned to the subscription. For a full overview of
    # the impact of voiding, please [see our help
    # docs](reference/Chargify-API.v1.yaml/components/schemas/Invoice).
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription
    # @param [VoidInvoiceRequest] body Optional parameter: Example:
    # @return [Invoice] response from the API call
    def void_advance_invoice(subscription_id,
                             body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/advance_invoice/void.json',
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
                   .deserialize_into(Invoice.method(:from_hash))
                   .local_error('403',
                                'Forbidden',
                                APIException)
                   .local_error('404',
                                'Not Found',
                                APIException))
        .execute
    end
  end
end
