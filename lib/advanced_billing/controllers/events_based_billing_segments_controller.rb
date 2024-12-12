# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # EventsBasedBillingSegmentsController
  class EventsBasedBillingSegmentsController < BaseController
    # This endpoint creates a new Segment for a Component with segmented Metric.
    # It allows you to specify properties to bill upon and prices for each
    # Segment. You can only pass as many "property_values" as the related Metric
    # has segmenting properties defined.
    # You may specify component and/or price point by using either the numeric
    # ID or the `handle:gold` syntax.
    # @param [String] component_id Required parameter: ID or Handle for the
    # Component
    # @param [String] price_point_id Required parameter: ID or Handle for the
    # Price Point belonging to the Component
    # @param [CreateSegmentRequest] body Optional parameter: Example:
    # @return [SegmentResponse] response from the API call.
    def create_segment(component_id,
                       price_point_id,
                       body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/components/{component_id}/price_points/{price_point_id}/segments.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(component_id, key: 'component_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(price_point_id, key: 'price_point_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SegmentResponse.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          EventBasedBillingSegmentErrorsException))
        .execute
    end

    # This endpoint allows you to fetch Segments created for a given Price
    # Point. They will be returned in the order of creation.
    # You can pass `page` and `per_page` parameters in order to access all of
    # the segments. By default it will return `30` records. You can set
    # `per_page` to `200` at most.
    # You may specify component and/or price point by using either the numeric
    # ID or the `handle:gold` syntax.
    # @param [String] component_id Required parameter: ID or Handle for the
    # Component
    # @param [String] price_point_id Required parameter: ID or Handle for the
    # Price Point belonging to the Component
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request. Default value is 30. The maximum
    # allowed values is 200; any per_page value over 200 will be changed to 200.
    # Use in query `per_page=200`.
    # @param [ListSegmentsFilter] filter Optional parameter: Filter to use for
    # List Segments for a Price Point operation
    # @return [ListSegmentsResponse] response from the API call.
    def list_segments_for_price_point(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/components/{component_id}/price_points/{price_point_id}/segments.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(options['component_id'], key: 'component_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(options['price_point_id'], key: 'price_point_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['filter'], key: 'filter'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListSegmentsResponse.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          EventBasedBillingListSegmentsErrorsException))
        .execute
    end

    # This endpoint updates a single Segment for a Component with a segmented
    # Metric. It allows you to update the pricing for the segment.
    # You may specify component and/or price point by using either the numeric
    # ID or the `handle:gold` syntax.
    # @param [String] component_id Required parameter: ID or Handle of the
    # Component
    # @param [String] price_point_id Required parameter: ID or Handle of the
    # Price Point belonging to the Component
    # @param [Float] id Required parameter: The ID of the Segment
    # @param [UpdateSegmentRequest] body Optional parameter: Example:
    # @return [SegmentResponse] response from the API call.
    def update_segment(component_id,
                       price_point_id,
                       id,
                       body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/components/{component_id}/price_points/{price_point_id}/segments/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(component_id, key: 'component_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(price_point_id, key: 'price_point_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SegmentResponse.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          EventBasedBillingSegmentErrorsException))
        .execute
    end

    # This endpoint allows you to delete a Segment with specified ID.
    # You may specify component and/or price point by using either the numeric
    # ID or the `handle:gold` syntax.
    # @param [String] component_id Required parameter: ID or Handle of the
    # Component
    # @param [String] price_point_id Required parameter: ID or Handle of the
    # Price Point belonging to the Component
    # @param [Float] id Required parameter: The ID of the Segment
    # @return [void] response from the API call.
    def delete_segment(component_id,
                       price_point_id,
                       id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/components/{component_id}/price_points/{price_point_id}/segments/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(component_id, key: 'component_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(price_point_id, key: 'price_point_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
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
                                          APIException))
        .execute
    end

    # This endpoint allows you to create multiple segments in one request. The
    # array of segments can contain up to `2000` records.
    # If any of the records contain an error the whole request would fail and
    # none of the requested segments get created. The error response contains a
    # message for only the one segment that failed validation, with the
    # corresponding index in the array.
    # You may specify component and/or price point by using either the numeric
    # ID or the `handle:gold` syntax.
    # @param [String] component_id Required parameter: ID or Handle for the
    # Component
    # @param [String] price_point_id Required parameter: ID or Handle for the
    # Price Point belonging to the Component
    # @param [BulkCreateSegments] body Optional parameter: Example:
    # @return [ListSegmentsResponse] response from the API call.
    def bulk_create_segments(component_id,
                             price_point_id,
                             body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/components/{component_id}/price_points/{price_point_id}/segments/bulk.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(component_id, key: 'component_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(price_point_id, key: 'price_point_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListSegmentsResponse.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          EventBasedBillingSegmentException))
        .execute
    end

    # This endpoint allows you to update multiple segments in one request. The
    # array of segments can contain up to `1000` records.
    # If any of the records contain an error the whole request would fail and
    # none of the requested segments get updated. The error response contains a
    # message for only the one segment that failed validation, with the
    # corresponding index in the array.
    # You may specify component and/or price point by using either the numeric
    # ID or the `handle:gold` syntax.
    # @param [String] component_id Required parameter: ID or Handle for the
    # Component
    # @param [String] price_point_id Required parameter: ID or Handle for the
    # Price Point belonging to the Component
    # @param [BulkUpdateSegments] body Optional parameter: Example:
    # @return [ListSegmentsResponse] response from the API call.
    def bulk_update_segments(component_id,
                             price_point_id,
                             body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/components/{component_id}/price_points/{price_point_id}/segments/bulk.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(component_id, key: 'component_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(price_point_id, key: 'price_point_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListSegmentsResponse.method(:from_hash))
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          EventBasedBillingSegmentException))
        .execute
    end
  end
end
