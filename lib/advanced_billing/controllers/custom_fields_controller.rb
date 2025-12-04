# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # CustomFieldsController
  class CustomFieldsController < BaseController
    # Creates metafields on a Site for either the Subscriptions or Customers
    # resource.
    # Metafields and their metadata are created in the Custom Fields
    # configuration page on your Site. Metafields can be populated with metadata
    # when you create them or later with the [Update
    # Metafield]($e/Custom%20Fields/updateMetafield), [Create
    # Metadata]($e/Custom%20Fields/createMetadata), or [Update
    # Metadata]($e/Custom%20Fields/updateMetadata) endpoints. The Create
    # Metadata and Update Metadata endpoints allow you to add metafields and
    # metadata values to a specific subscription or customer.
    # Each site is limited to 100 unique metafields per resource. This means you
    # can have 100 metafields for Subscriptions and another 100 for Customers.
    # > Note: After creating a metafield, the resource type cannot be modified.
    # In the UI and product documentation, metafields and metadata are called
    # Custom Fields.
    # - Metafield is the custom field
    # - Metadata is the data populating the custom field.
    # See [Custom Fields
    # Reference](https://docs.maxio.com/hc/en-us/articles/24266140850573-Custom-
    # Fields-Reference) and [Custom Fields
    # Tab](https://maxio.zendesk.com/hc/en-us/articles/24251701302925-Subscripti
    # on-Summary-Custom-Fields-Tab) for information on using Custom Fields in
    # the Advanced Billing UI.
    # @param [ResourceType] resource_type Required parameter: The resource type
    # to which the metafields belong.
    # @param [CreateMetafieldsRequest] body Optional parameter: TODO: type
    # description here
    # @return [Array[Metafield]] Response from the API call.
    def create_metafields(resource_type,
                          body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/{resource_type}/metafields.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(resource_type, key: 'resource_type')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Metafield.method(:from_hash))
                    .is_response_array(true)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          SingleErrorResponseException))
        .execute
    end

    # Lists the metafields and their associated details for a Site and resource
    # type. You can filter the request to a specific metafield.
    # @param [ResourceType] resource_type Required parameter: The resource type
    # to which the metafields belong.
    # @param [String] name Optional parameter: Filter by the name of the
    # metafield.
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
    # @param [SortingDirection] direction Optional parameter: Controls the order
    # in which results are returned. Use in query `direction=asc`.
    # @return [ListMetafieldsResponse] Response from the API call.
    def list_metafields(options = {})
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/{resource_type}/metafields.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(options['resource_type'], key: 'resource_type')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['name'], key: 'name'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['direction'], key: 'direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListMetafieldsResponse.method(:from_hash)))
        .execute
    end

    # Updates metafields on your Site for a resource type.  Depending on the
    # request structure, you can update or add metafields and metadata to the
    # Subscriptions or Customers resource.
    # With this endpoint, you can:
    # - Add metafields. If the metafield specified in current_name does not
    # exist, a new metafield is added.
    #   >Note: Each site is limited to 100 unique metafields per resource. This
    # means you can have 100 metafields for Subscriptions and another 100 for
    # Customers.
    # - Change the name of a metafield.
    #   >Note: To keep the metafield name the same and only update the metadata
    # for the metafield, you must use the current metafield name in both the
    # `current_name` and `name` parameters.
    # - Change the input type for the metafield. For example, you can change a
    # metafield input type from text to a dropdown. If you change the input type
    # from text to a dropdown or radio, you must update the specific
    # subscriptions or customers where the metafield was used to reflect the
    # updated metafield and metadata.
    # - Add metadata values to the existing metadata for a dropdown or radio
    # metafield.
    #   >Note: Updates to metadata overwrite. To add one or more values, you
    # must specify all metadata values including the new value you want to add.
    # - Add new metadata to a dropdown or radio for a metafield that was created
    # without metadata.
    # - Remove  metadata for a dropdown or radio for a metafield.
    #   >Note: Updates to metadata overwrite existing values. To remove one or
    # more values, specify all metadata values except those you want to remove.
    # - Add or update scope settings for a metafield.
    #   >Note: Scope changes overwrite existing settings. You must specify the
    # complete scope, including the changes you want to make.
    # @param [ResourceType] resource_type Required parameter: The resource type
    # to which the metafields belong.
    # @param [UpdateMetafieldsRequest] body Optional parameter: TODO: type
    # description here
    # @return [Array[Metafield]] Response from the API call.
    def update_metafield(resource_type,
                         body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/{resource_type}/metafields.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(resource_type, key: 'resource_type')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Metafield.method(:from_hash))
                    .is_response_array(true)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          SingleErrorResponseException))
        .execute
    end

    # Deletes a metafield from your Site. Removes the metafield and associated
    # metadata from all Subscriptions or Customers resources on the Site.
    # @param [ResourceType] resource_type Required parameter: The resource type
    # to which the metafields belong.
    # @param [String] name Optional parameter: The name of the metafield to be
    # deleted
    # @return [void] Response from the API call.
    def delete_metafield(resource_type,
                         name: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/{resource_type}/metafields.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(resource_type, key: 'resource_type')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(name, key: 'name'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .is_response_void(true)
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException))
        .execute
    end

    # Creates metadata and metafields for a specific subscription or customer,
    # or updates metadata values of existing metafields for a subscription or
    # customer. Metadata values are limited to 2 KB in size.
    # If you create metadata on a subscription or customer with a metafield that
    # does not already exist, the metafield is created with the metadata you
    # specify and it is always added as a text field. You can update the
    # input_type for the metafield with the [Update
    # Metafield]($e/Custom%20Fields/updateMetafield) endpoint.
    # >Note: Each site is limited to 100 unique metafields per resource. This
    # means you can have 100 metafields for Subscriptions and another 100 for
    # Customers.
    # @param [ResourceType] resource_type Required parameter: The resource type
    # to which the metafields belong.
    # @param [Integer] resource_id Required parameter: The Advanced Billing id
    # of the customer or the subscription for which the metadata applies
    # @param [CreateMetadataRequest] body Optional parameter: TODO: type
    # description here
    # @return [Array[Metadata]] Response from the API call.
    def create_metadata(resource_type,
                        resource_id,
                        body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/{resource_type}/{resource_id}/metadata.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(resource_type, key: 'resource_type')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(resource_id, key: 'resource_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Metadata.method(:from_hash))
                    .is_response_array(true)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          SingleErrorResponseException))
        .execute
    end

    # Lists metadata and metafields for a specific customer or subscription.
    # @param [ResourceType] resource_type Required parameter: The resource type
    # to which the metafields belong.
    # @param [Integer] resource_id Required parameter: The Advanced Billing id
    # of the customer or the subscription for which the metadata applies
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
    # @return [PaginatedMetadata] Response from the API call.
    def list_metadata(options = {})
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/{resource_type}/{resource_id}/metadata.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(options['resource_type'], key: 'resource_type')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(options['resource_id'], key: 'resource_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaginatedMetadata.method(:from_hash)))
        .execute
    end

    # Updates metadata and metafields on the Site and the customer or
    # subscription specified, and updates the metadata value on a subscription
    # or customer.
    # If you update metadata on a subscription or customer with a metafield that
    # does not already exist, the metafield is created with the metadata you
    # specify and it is always added as a text field to the Site and to the
    # subscription or customer you specify. You can update the input_type for
    # the metafield with the Update Metafield endpoint.
    # Each site is limited to 100 unique metafields per resource. This means you
    # can have 100 metafields for Subscription and another 100 for Customer.
    # @param [ResourceType] resource_type Required parameter: The resource type
    # to which the metafields belong.
    # @param [Integer] resource_id Required parameter: The Advanced Billing id
    # of the customer or the subscription for which the metadata applies
    # @param [UpdateMetadataRequest] body Optional parameter: TODO: type
    # description here
    # @return [Array[Metadata]] Response from the API call.
    def update_metadata(resource_type,
                        resource_id,
                        body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/{resource_type}/{resource_id}/metadata.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(resource_type, key: 'resource_type')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(resource_id, key: 'resource_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Metadata.method(:from_hash))
                    .is_response_array(true)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          SingleErrorResponseException))
        .execute
    end

    # Deletes one or more metafields (and associated metadata) from the
    # specified subscription or customer.
    # @param [ResourceType] resource_type Required parameter: The resource type
    # to which the metafields belong.
    # @param [Integer] resource_id Required parameter: The Advanced Billing id
    # of the customer or the subscription for which the metadata applies
    # @param [String] name Optional parameter: Name of field to be removed.
    # @param [Array[String]] names Optional parameter: Names of fields to be
    # removed. Use in query:
    # `names[]=field1&names[]=my-field&names[]=another-field`.
    # @return [void] Response from the API call.
    def delete_metadata(resource_type,
                        resource_id,
                        name: nil,
                        names: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/{resource_type}/{resource_id}/metadata.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(resource_type, key: 'resource_type')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(resource_id, key: 'resource_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(name, key: 'name'))
                   .query_param(new_parameter(names, key: 'names'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::UN_INDEXED))
        .response(new_response_handler
                    .is_response_void(true)
                    .local_error_template('404',
                                          'Not Found:\'{$response.body}\'',
                                          APIException))
        .execute
    end

    # Lists  metadata for a specified array of subscriptions or customers.
    # @param [ResourceType] resource_type Required parameter: The resource type
    # to which the metafields belong.
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
    # @param [BasicDateField] date_field Optional parameter: The type of filter
    # you would like to apply to your search.
    # @param [Date] start_date Optional parameter: The start date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns metadata with a
    # timestamp at or after midnight (12:00:00 AM) in your site’s time zone on
    # the date specified.
    # @param [Date] end_date Optional parameter: The end date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns metadata with a
    # timestamp up to and including 11:59:59PM in your site’s time zone on the
    # date specified.
    # @param [DateTime] start_datetime Optional parameter: The start date and
    # time (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field.
    # Returns metadata with a timestamp at or after exact time provided in
    # query. You can specify timezone in query - otherwise your site's time zone
    # will be used. If provided, this parameter will be used instead of
    # start_date.
    # @param [DateTime] end_datetime Optional parameter: The end date and time
    # (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns
    # metadata with a timestamp at or before exact time provided in query. You
    # can specify timezone in query - otherwise your site's time zone will be
    # used. If provided, this parameter will be used instead of end_date.
    # @param [TrueClass | FalseClass] with_deleted Optional parameter: Allow to
    # fetch deleted metadata.
    # @param [Array[Integer]] resource_ids Optional parameter: Allow to fetch
    # metadata for multiple records based on provided ids. Use in query:
    # `resource_ids[]=122&resource_ids[]=123&resource_ids[]=124`.
    # @param [SortingDirection] direction Optional parameter: Controls the order
    # in which results are returned. Use in query `direction=asc`.
    # @return [PaginatedMetadata] Response from the API call.
    def list_metadata_for_resource_type(options = {})
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/{resource_type}/metadata.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(options['resource_type'], key: 'resource_type')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['date_field'], key: 'date_field'))
                   .query_param(new_parameter(options['start_date'], key: 'start_date'))
                   .query_param(new_parameter(options['end_date'], key: 'end_date'))
                   .query_param(new_parameter(options['start_datetime'], key: 'start_datetime'))
                   .query_param(new_parameter(options['end_datetime'], key: 'end_datetime'))
                   .query_param(new_parameter(options['with_deleted'], key: 'with_deleted'))
                   .query_param(new_parameter(options['resource_ids'], key: 'resource_ids'))
                   .query_param(new_parameter(options['direction'], key: 'direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::UN_INDEXED))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaginatedMetadata.method(:from_hash)))
        .execute
    end
  end
end
