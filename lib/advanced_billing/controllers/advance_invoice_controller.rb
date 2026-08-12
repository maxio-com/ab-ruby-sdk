# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # AdvanceInvoiceController
  class AdvanceInvoiceController < BaseController
    # Issues an invoice in advance for a subscription's next renewal date. For
    # the most part, advance invoices function like any other invoice, except
    # they are issued early and have special behavior upon being voided. For
    # more information on advance invoices, including eligibility for generating
    # one, see [Issue Invoice In
    # Advance](https://maxio.zendesk.com/hc/en-us/articles/24252026404749-Issue-
    # Invoice-In-Advance).
    # A subscription can only have one advance invoice per billing period.
    # Attempting to issue an advance invoice when one already exists returns an
    # error.
    # Regeneration of the invoice can be forced with the params `force: true`,
    # which voids an advance invoice if one exists and generates a new one. If
    # no advance invoice exists, a new one is generated.
    # Consider using either the create or preview endpoints for proforma
    # invoices to preview this advance invoice before using this endpoint to
    # generate it.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [IssueAdvanceInvoiceRequest] body Optional parameter: TODO: type
    # description here
    # @return [Invoice] Response from the API call.
    def issue_advance_invoice(subscription_id,
                              body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/advance_invoice/issue.json',
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
                    .deserialize_into(Invoice.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # Returns the advance invoice generated for a subscription's upcoming
    # renewal. There can only be one advance invoice per subscription per
    # billing cycle.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @return [Invoice] Response from the API call.
    def read_advance_invoice(subscription_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions/{subscription_id}/advance_invoice.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Invoice.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException))
        .execute
    end

    # Voids a subscription's existing advance invoice. Once voided, it can later
    # be regenerated if desired.
    # A `reason` is required to void, and the invoice must have an open status.
    # Voiding causes any prepayments and credits that were applied to the
    # invoice to be returned to the subscription.
    # For a full overview of the impact of voiding, see [Invoice]($m/Invoice).
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [VoidInvoiceRequest] body Optional parameter: TODO: type
    # description here
    # @return [Invoice] Response from the API call.
    def void_advance_invoice(subscription_id,
                             body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/advance_invoice/void.json',
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
                    .deserialize_into(Invoice.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException))
        .execute
    end
  end
end
