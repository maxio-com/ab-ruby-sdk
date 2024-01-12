# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # APIExportsController
  class APIExportsController < BaseController
    # This API returns an array of exported proforma invoices for a provided
    # `batch_id`. Pay close attention to pagination in order to control
    # responses from the server.
    # Example: `GET
    # https://{subdomain}.chargify.com/api_exports/proforma_invoices/123/rows?pe
    # r_page=10000&page=1`.
    # @param [String] batch_id Required parameter: Id of a Batch Job.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request.  Default value is 100.  The maximum
    # allowed values is 10000; any per_page value over 10000 will be changed to
    # 10000.
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @return [Array[ProformaInvoice]] response from the API call
    def list_exported_proforma_invoices(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/api_exports/proforma_invoices/{batch_id}/rows.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['batch_id'], key: 'batch_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ProformaInvoice.method(:from_hash))
                   .is_response_array(true)
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException))
        .execute
    end

    # This API returns an array of exported invoices for a provided `batch_id`.
    # Pay close attention to pagination in order to control responses from the
    # server.
    # Example: `GET
    # https://{subdomain}.chargify.com/api_exports/invoices/123/rows?per_page=10
    # 000&page=1`.
    # @param [String] batch_id Required parameter: Id of a Batch Job.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request.  Default value is 100.  The maximum
    # allowed values is 10000; any per_page value over 10000 will be changed to
    # 10000.
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @return [Array[Invoice]] response from the API call
    def list_exported_invoices(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/api_exports/invoices/{batch_id}/rows.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['batch_id'], key: 'batch_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Invoice.method(:from_hash))
                   .is_response_array(true)
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException))
        .execute
    end

    # This API returns an array of exported subscriptions for a provided
    # `batch_id`. Pay close attention to pagination in order to control
    # responses from the server.
    # Example: `GET
    # https://{subdomain}.chargify.com/api_exports/subscriptions/123/rows?per_pa
    # ge=200&page=1`.
    # @param [String] batch_id Required parameter: Id of a Batch Job.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request.  Default value is 100.  The maximum
    # allowed values is 10000; any per_page value over 10000 will be changed to
    # 10000.
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @return [Array[Subscription]] response from the API call
    def list_exported_subscriptions(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/api_exports/subscriptions/{batch_id}/rows.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['batch_id'], key: 'batch_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Subscription.method(:from_hash))
                   .is_response_array(true)
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException))
        .execute
    end

    # This API creates a proforma invoices export and returns a batchjob object.
    # It is only available for Relationship Invoicing architecture.
    # @return [BatchJobResponse] response from the API call
    def export_proforma_invoices
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/api_exports/proforma_invoices.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(BatchJobResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException)
                   .local_error_template('409',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         SingleErrorResponseException))
        .execute
    end

    # This API creates an invoices export and returns a batchjob object.
    # @return [BatchJobResponse] response from the API call
    def export_invoices
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/api_exports/invoices.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(BatchJobResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException)
                   .local_error_template('409',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         SingleErrorResponseException))
        .execute
    end

    # This API creates a subscriptions export and returns a batchjob object.
    # @return [BatchJobResponse] response from the API call
    def export_subscriptions
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/api_exports/subscriptions.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(BatchJobResponse.method(:from_hash))
                   .local_error_template('409',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         SingleErrorResponseException))
        .execute
    end

    # This API returns a batchjob object for proforma invoices export.
    # @param [String] batch_id Required parameter: Id of a Batch Job.
    # @return [BatchJobResponse] response from the API call
    def read_proforma_invoices_export(batch_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/api_exports/proforma_invoices/{batch_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(batch_id, key: 'batch_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(BatchJobResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException))
        .execute
    end

    # This API returns a batchjob object for invoices export.
    # @param [String] batch_id Required parameter: Id of a Batch Job.
    # @return [BatchJobResponse] response from the API call
    def read_invoices_export(batch_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/api_exports/invoices/{batch_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(batch_id, key: 'batch_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(BatchJobResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException))
        .execute
    end

    # This API returns a batchjob object for subscriptions export.
    # @param [String] batch_id Required parameter: Id of a Batch Job.
    # @return [BatchJobResponse] response from the API call
    def read_subscriptions_export(batch_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/api_exports/subscriptions/{batch_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(batch_id, key: 'batch_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(BatchJobResponse.method(:from_hash))
                   .local_error_template('404',
                                         'Not Found:\'{$response.body}\'',
                                         APIException))
        .execute
    end
  end
end
