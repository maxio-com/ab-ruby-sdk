# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CustomFieldsController
  class CustomFieldsController < BaseController
    # ## Custom Fields: Metafield Intro
    # **Chargify refers to Custom Fields in the API documentation as metafields
    # and metadata.** Within the Chargify UI, metadata and metafields are
    # grouped together under the umbrella of "Custom Fields." All of our
    # UI-based documentation that references custom fields will not cite the
    # terminology metafields or metadata.
    # + **Metafield is the custom field**
    # + **Metadata is the data populating the custom field.**
    # Chargify Metafields are used to add meaningful attributes to subscription
    # and customer resources. Full documentation on how to create Custom Fields
    # in the Chargify UI can be located
    # [here](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405332553613-
    # Custom-Fields-Reference). For additional documentation on how to record
    # data within custom fields, please see our subscription-based documentation
    # [here.](https://maxio-chargify.zendesk.com/hc/en-us/articles/5404434903181
    # -Subscription-Summary#custom-fields)
    # Metafield are the place where you will set up your resource to accept
    # additional data. It is scoped to the site instead of a specific customer
    # or subscription. Think of it as the key, and Metadata as the value on
    # every record.
    # ## Create Metafields
    # Use this endpoint to create metafields for your Site. Metafields can be
    # populated with metadata after the fact.
    # Each site is limited to 100 unique Metafields (i.e. keys, or names) per
    # resource. This means you can have 100 Metafields for Subscription and
    # another 100 for Customer.
    # ### Metafields "On-the-Fly"
    # It is possible to create Metafields “on the fly” when you create your
    # Metadata – if a non-existant name is passed when creating Metadata, a
    # Metafield for that key will be automatically created. The Metafield API,
    # however, gives you more control over your “keys”.
    # ### Metafield Scope Warning
    # If configuring metafields in the Admin UI or via the API, be careful
    # sending updates to metafields with the scope attribute – **if a partial
    # update is sent it will overwrite the current configuration**.
    # @param [ResourceType] resource_type Required parameter: the resource type
    # to which the metafields belong
    # @param [CreateMetafieldsRequest] body Optional parameter: Example:
    # @return [Array[Metafield]] response from the API call
    def create_metafields(resource_type,
                          body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/{resource_type}/metafields.json',
                                     Server::DEFAULT)
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
                   .local_error('422',
                                'Unprocessable Entity (WebDAV)',
                                SingleErrorResponseException))
        .execute
    end

    # This endpoint lists metafields associated with a site. The metafield
    # description and usage is contained in the response.
    # @param [ResourceType] resource_type Required parameter: the resource type
    # to which the metafields belong
    # @param [String] name Optional parameter: filter by the name of the
    # metafield
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
    # @return [ListMetafieldsResponse] response from the API call
    def list_metafields(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/{resource_type}/metafields.json',
                                     Server::DEFAULT)
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

    # Use the following method to update metafields for your Site. Metafields
    # can be populated with metadata after the fact.
    # @param [ResourceType] resource_type Required parameter: the resource type
    # to which the metafields belong
    # @param [String] name Required parameter: Name of the custom field.
    # @param [String] current_name Optional parameter: This only applies when
    # you are updating an existing record and you wish to rename the field. Note
    # you must supply name and current_name to rename the field
    # @param [UpdateMetafieldsRequest] body Optional parameter: Example:
    # @return [Array[Metafield]] response from the API call
    def update_metafield(resource_type,
                         name,
                         current_name: nil,
                         body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/{resource_type}/metafields.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(resource_type, key: 'resource_type')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(name, key: 'name')
                                 .is_required(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .query_param(new_parameter(current_name, key: 'current_name'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Metafield.method(:from_hash))
                   .is_response_array(true))
        .execute
    end

    # Use the following method to delete a metafield. This will remove the
    # metafield from the Site.
    # Additionally, this will remove the metafield and associated metadata with
    # all Subscriptions on the Site.
    # @param [ResourceType] resource_type Required parameter: the resource type
    # to which the metafields belong
    # @param [String] name Optional parameter: The name of the metafield to be
    # deleted
    # @return [void] response from the API call
    def delete_metafield(resource_type,
                         name: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/{resource_type}/metafields.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(resource_type, key: 'resource_type')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(name, key: 'name'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('404',
                                'Not Found',
                                APIException))
        .execute
    end

    # ## Custom Fields: Metadata Intro
    # **Chargify refers to Custom Fields in the API documentation as metafields
    # and metadata.** Within the Chargify UI, metadata and metafields are
    # grouped together under the umbrella of "Custom Fields." All of our
    # UI-based documentation that references custom fields will not cite the
    # terminology metafields or metadata.
    # + **Metafield is the custom field**
    # + **Metadata is the data populating the custom field.**
    # Chargify Metafields are used to add meaningful attributes to subscription
    # and customer resources. Full documentation on how to create Custom Fields
    # in the Chargify UI can be located
    # [here](https://chargify.zendesk.com/hc/en-us/articles/4407659856411). For
    # additional documentation on how to record data within custom fields,
    # please see our subscription-based documentation
    # [here.](https://chargify.zendesk.com/hc/en-us/articles/4407884887835#custo
    # m-fields)
    # Metadata is associated to a customer or subscription, and corresponds to a
    # Metafield. When creating a new metadata object for a given record, **if
    # the metafield is not present it will be created**.
    # ## Metadata limits
    # Metadata values are limited to 2kB in size. Additonally, there are limits
    # on the number of unique metafields available per resource.
    # ## Create Metadata
    # This method will create a metafield for the site on the fly if it does not
    # already exist, and populate the metadata value.
    # ### Subscription or Customer Resource
    # Please pay special attention to the resource you use when creating
    # metadata.
    # @param [ResourceType] resource_type Required parameter: the resource type
    # to which the metafields belong
    # @param [String] resource_id Required parameter: The Chargify id of the
    # customer or the subscription for which the metadata applies
    # @param [CreateMetadataRequest] body Optional parameter: Example:
    # @return [Array[Metadata]] response from the API call
    def create_metadata(resource_type,
                        resource_id,
                        body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/{resource_type}/{resource_id}/metadata.json',
                                     Server::DEFAULT)
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
                   .local_error('422',
                                'Unprocessable Entity (WebDAV)',
                                SingleErrorResponseException))
        .execute
    end

    # This request will list all of the metadata belonging to a particular
    # resource (ie. subscription, customer) that is specified.
    # ## Metadata Data
    # This endpoint will also display the current stats of your metadata to use
    # as a tool for pagination.
    # @param [ResourceType] resource_type Required parameter: the resource type
    # to which the metafields belong
    # @param [String] resource_id Required parameter: The Chargify id of the
    # customer or the subscription for which the metadata applies
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
    # @return [PaginatedMetadata] response from the API call
    def list_metadata(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/{resource_type}/{resource_id}/metadata.json',
                                     Server::DEFAULT)
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

    # This method allows you to update the existing metadata associated with a
    # subscription or customer.
    # @param [ResourceType] resource_type Required parameter: the resource type
    # to which the metafields belong
    # @param [String] resource_id Required parameter: The Chargify id of the
    # customer or the subscription for which the metadata applies
    # @param [UpdateMetadataRequest] body Optional parameter: Example:
    # @return [Array[Metadata]] response from the API call
    def update_metadata(resource_type,
                        resource_id,
                        body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/{resource_type}/{resource_id}/metadata.json',
                                     Server::DEFAULT)
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
                   .is_response_array(true))
        .execute
    end

    # This method removes the metadata from the subscriber/customer cited.
    # ## Query String Usage
    # For instance if you wanted to delete the metadata for customer 99 named
    # weight you would request:
    # ```
    # https://acme.chargify.com/customers/99/metadata.json?name=weight
    # ```
    # If you want to delete multiple metadata fields for a customer 99 named:
    # `weight` and `age` you wrould request:
    # ```
    # https://acme.chargify.com/customers/99/metadata.json?names[]=weight&names[
    # ]=age
    # ```
    # ## Successful Response
    # For a success, there will be a code `200` and the plain text response
    # `true`.
    # ## Unsuccessful Response
    # When a failed response is encountered, you will receive a `404` response
    # and the plain text response of `true`.
    # @param [ResourceType] resource_type Required parameter: the resource type
    # to which the metafields belong
    # @param [String] resource_id Required parameter: The Chargify id of the
    # customer or the subscription for which the metadata applies
    # @param [String] name Optional parameter: Name of field to be removed.
    # @param [Array[String]] names Optional parameter: Names of fields to be
    # removed. Use in query:
    # `names[]=field1&names[]=my-field&names[]=another-field`.
    # @return [void] response from the API call
    def delete_metadata(resource_type,
                        resource_id,
                        name: nil,
                        names: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/{resource_type}/{resource_id}/metadata.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(resource_type, key: 'resource_type')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(resource_id, key: 'resource_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(name, key: 'name'))
                   .query_param(new_parameter(names, key: 'names[]'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::PLAIN))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('404',
                                'Not Found',
                                APIException))
        .execute
    end

    # This method will provide you information on usage of metadata across your
    # selected resource (ie. subscriptions, customers)
    # ## Metadata Data
    # This endpoint will also display the current stats of your metadata to use
    # as a tool for pagination.
    # ### Metadata for multiple records
    # `https://acme.chargify.com/subscriptions/metadata.json?resource_ids[]=1&re
    # source_ids[]=2`
    # ## Read Metadata for a Site
    # This endpoint will list the number of pages of metadata information that
    # are contained within a site.
    # @param [ResourceType] resource_type Required parameter: the resource type
    # to which the metafields belong
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
    # @param [String] start_date Optional parameter: The start date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns metadata with a
    # timestamp at or after midnight (12:00:00 AM) in your site’s time zone on
    # the date specified.
    # @param [String] end_date Optional parameter: The end date (format
    # YYYY-MM-DD) with which to filter the date_field. Returns metadata with a
    # timestamp up to and including 11:59:59PM in your site’s time zone on the
    # date specified.
    # @param [String] start_datetime Optional parameter: The start date and time
    # (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns
    # metadata with a timestamp at or after exact time provided in query. You
    # can specify timezone in query - otherwise your site's time zone will be
    # used. If provided, this parameter will be used instead of start_date.
    # @param [String] end_datetime Optional parameter: The end date and time
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
    # @return [PaginatedMetadata] response from the API call
    def list_metadata_for_resource_type(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/{resource_type}/metadata.json',
                                     Server::DEFAULT)
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
                   .query_param(new_parameter(options['resource_ids'], key: 'resource_ids[]'))
                   .query_param(new_parameter(options['direction'], key: 'direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth'))
                   .array_serialization_format(ArraySerializationFormat::CSV))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(PaginatedMetadata.method(:from_hash)))
        .execute
    end
  end
end
