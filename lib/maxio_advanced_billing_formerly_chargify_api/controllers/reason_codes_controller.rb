# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # ReasonCodesController
  class ReasonCodesController < BaseController
    # # Reason Codes Intro
    # ReasonCodes are a way to gain a high level view of why your customers are
    # cancelling the subcription to your product or service.
    # Add a set of churn reason codes to be displayed in-app and/or the Chargify
    # Billing Portal. As your subscribers decide to cancel their subscription,
    # learn why they decided to cancel.
    # ## Reason Code Documentation
    # Full documentation on how Reason Codes operate within Chargify can be
    # located under the following links.
    # [Churn Reason
    # Codes](https://chargify.zendesk.com/hc/en-us/articles/4407896775579#churn-
    # reason-codes)
    # ## Create Reason Code
    # This method gives a merchant the option to create a reason codes for a
    # given Site.
    # @param [CreateReasonCodeRequest] body Optional parameter: Example:
    # @return [ReasonCodeResponse] response from the API call
    def create_reason_code(body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/reason_codes.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ReasonCodeResponse.method(:from_hash))
                   .local_error('422',
                                'Unprocessable Entity (WebDAV)',
                                ErrorListResponseException))
        .execute
    end

    # This method gives a merchant the option to retrieve a list of all of the
    # current churn codes for a given site.
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
    # @return [Array[ReasonCodeResponse]] response from the API call
    def list_reason_codes(page: 1,
                          per_page: 20)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/reason_codes.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(per_page, key: 'per_page'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ReasonCodeResponse.method(:from_hash))
                   .is_response_array(true))
        .execute
    end

    # This method gives a merchant the option to retrieve a list of a particular
    # code for a given Site by providing the unique numerical ID of the code.
    # @param [Integer] reason_code_id Required parameter: The Chargify id of the
    # reason code
    # @return [ReasonCodeResponse] response from the API call
    def read_reason_code(reason_code_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/reason_codes/{reason_code_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(reason_code_id, key: 'reason_code_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ReasonCodeResponse.method(:from_hash))
                   .local_error('404',
                                'Not Found',
                                APIException))
        .execute
    end

    # This method gives a merchant the option to update an existing reason code
    # for a given site.
    # @param [Integer] reason_code_id Required parameter: The Chargify id of the
    # reason code
    # @param [UpdateReasonCodeRequest] body Optional parameter: Example:
    # @return [ReasonCodeResponse] response from the API call
    def update_reason_code(reason_code_id,
                           body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/reason_codes/{reason_code_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(reason_code_id, key: 'reason_code_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ReasonCodeResponse.method(:from_hash))
                   .local_error('404',
                                'Not Found',
                                APIException))
        .execute
    end

    # This method gives a merchant the option to delete one reason code from the
    # Churn Reason Codes. This code will be immediately removed. This action is
    # not reversable.
    # @param [Integer] reason_code_id Required parameter: The Chargify id of the
    # reason code
    # @return [ReasonCodesJsonResponse] response from the API call
    def delete_reason_code(reason_code_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/reason_codes/{reason_code_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(reason_code_id, key: 'reason_code_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ReasonCodesJsonResponse.method(:from_hash))
                   .local_error('404',
                                'Not Found',
                                APIException))
        .execute
    end
  end
end
