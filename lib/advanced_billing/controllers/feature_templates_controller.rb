# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # FeatureTemplatesController
  class FeatureTemplatesController < BaseController
    # Lists the feature templates defined for your site, active (non-archived)
    # ones by default. Pass `status=archived` or `status=all` to widen the
    # result set.
    # Supply `page` or `per_page` to paginate. Without either parameter, the
    # response includes the full result set.
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
    # @param [Status1] status Optional parameter: Filters by archived state.
    # Defaults to `active` (non-archived templates only).
    # @param [String] q Optional parameter: Filters to feature templates whose
    # name contains this substring (case-insensitive).
    # @param [Kind] kind Optional parameter: Filters by feature kind.
    # @param [Date] updated_from Optional parameter: Returns feature templates
    # updated on or after this date.
    # @param [Date] updated_to Optional parameter: Returns feature templates
    # updated on or before this date.
    # @param [SortBy] sort_by Optional parameter: The field to sort results
    # by.
    # @param [SortDirection] sort_direction Optional parameter: The sort
    # direction of the returned feature templates.
    # @return [FeatureTemplatesListResponse] Response from the API call.
    def list_feature_templates(page: 1,
                               per_page: 20,
                               status: Status1::ACTIVE,
                               q: nil,
                               kind: nil,
                               updated_from: nil,
                               updated_to: nil,
                               sort_by: SortBy::NAME,
                               sort_direction: SortDirection::ASC)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/features.json',
                                     Server::PRODUCTION)
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(per_page, key: 'per_page'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(q, key: 'q'))
                   .query_param(new_parameter(kind, key: 'kind'))
                   .query_param(new_parameter(updated_from, key: 'updated_from'))
                   .query_param(new_parameter(updated_to, key: 'updated_to'))
                   .query_param(new_parameter(sort_by, key: 'sort_by'))
                   .query_param(new_parameter(sort_direction, key: 'sort_direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(FeatureTemplatesListResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden',
                                 ErrorListResponseException))
        .execute
    end

    # Defines a new feature at the site level. Feature templates aren't billable
    # on their own. Attach a template to products or components to grant the
    # feature to subscribers.
    # @param [CreateFeatureTemplateRequest] body Optional parameter: TODO: type
    # description here
    # @return [FeatureTemplateResponse] Response from the API call.
    def create_feature_template(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/features.json',
                                     Server::PRODUCTION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(FeatureTemplateResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden',
                                 ErrorListResponseException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # Returns a single feature template. Archived feature templates are not
    # addressable here and return `404`. Restore a template first to read or
    # update it.
    # @param [Integer] id Required parameter: The Advanced Billing id of the
    # feature template.
    # @return [FeatureTemplateResponse] Response from the API call.
    def read_feature_template(id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/features/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(FeatureTemplateResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden',
                                 ErrorListResponseException)
                    .local_error('404',
                                 'Not Found',
                                 APIException))
        .execute
    end

    # Updates the name, description, unit, value type, default value, or default
    # periodicity of a feature template. `key` is rejected on every update.
    # `kind` is rejected once any feature catalog item has been created from
    # this template.
    # Archived feature templates are not addressable here and return `404`.
    # Restore a template first to update it.
    # @param [Integer] id Required parameter: The Advanced Billing id of the
    # feature template.
    # @param [UpdateFeatureTemplateRequest] body Optional parameter: TODO: type
    # description here
    # @return [FeatureTemplateResponse] Response from the API call.
    def update_feature_template(id,
                                body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/features/{id}.json',
                                     Server::PRODUCTION)
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
                    .deserialize_into(FeatureTemplateResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden',
                                 ErrorListResponseException)
                    .local_error('404',
                                 'Not Found',
                                 APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end

    # Archives a feature template. Archived feature templates are not
    # addressable via [Read Feature
    # Template]($e/Feature%20Templates/readFeatureTemplate) or [Update Feature
    # Template]($e/Feature%20Templates/updateFeatureTemplate). Both endpoints
    # return `404` until the template is restored.
    # The feature template record itself is never hard-deleted, and can always
    # be restored with [Restore Feature
    # Template]($e/Feature%20Templates/restoreFeatureTemplate). Reversibility
    # does not extend to `remove_from_catalog=true`: the feature catalog items
    # and entitlements that parameter destroys are gone permanently, and
    # restoring the template will not bring subscriber access back.
    # @param [Integer] id Required parameter: The Advanced Billing id of the
    # feature template.
    # @param [TrueClass | FalseClass] remove_from_catalog Optional parameter:
    # When `true`, also destroys every feature catalog item created from this
    # template and cascades to their entitlements, revoking subscriber access
    # immediately. When `false` (default), the feature template and its feature
    # catalog items are archived, and existing entitlements are preserved.
    # @return [void] Response from the API call.
    def archive_feature_template(id,
                                 remove_from_catalog: false)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/features/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(remove_from_catalog, key: 'remove_from_catalog'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .is_response_void(true)
                    .local_error('403',
                                 'Forbidden',
                                 ErrorListResponseException)
                    .local_error('404',
                                 'Not Found',
                                 APIException))
        .execute
    end

    # Clears the feature template's archived state. Feature catalog items
    # created from this template are not automatically restored. Restore each
    # one individually.
    # @param [Integer] id Required parameter: The Advanced Billing id of the
    # feature template.
    # @return [FeatureTemplateResponse] Response from the API call.
    def restore_feature_template(id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/features/{id}/restore.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(FeatureTemplateResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden',
                                 ErrorListResponseException)
                    .local_error('404',
                                 'Not Found',
                                 APIException)
                    .local_error_template('422',
                                          'HTTP Response Not OK. Status code: {$statusCode}.'\
                                           ' Response: \'{$response.body}\'.',
                                          ErrorListResponseException))
        .execute
    end
  end
end
