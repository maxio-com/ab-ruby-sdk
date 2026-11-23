# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ProductFeaturesController
  class ProductFeaturesController < BaseController
    # Lists the feature catalog items attached to this product, including
    # price-point-specific overrides.
    # @param [Integer] product_id Required parameter: The Advanced Billing id of
    # the product.
    # @return [FeatureCatalogItemsListResponse] Response from the API call.
    def list_product_features(product_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/products/{product_id}/features.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(product_id, key: 'product_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(FeatureCatalogItemsListResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden',
                                 ErrorListResponseException)
                    .local_error('404',
                                 'Not Found',
                                 APIException))
        .execute
    end

    # Attaches a feature template to this product. Pass `price_point_type:
    # "ProductPricePoint"` and `price_point_id` to scope the feature catalog
    # item to a single product price point instead of the whole product.
    # `value`, the periodicity and the grant expiration fall back to the feature
    # template's defaults when omitted.
    # **Product- or component-level items are a template.** A feature catalog
    # item without `price_point_id` is copied onto price points created after it
    # (except bulk-created price points; [Clone Component Price
    # Point]($e/Component%3A%20Price%20Points/cloneComponentPricePoint) applies
    # only the `feature_catalog_items` you send with it, and the automatic clone
    # described below copies the source's features), but it is not added to
    # price points that already exist, so their subscribers get nothing from it,
    # even with `propagate_to_subscriptions: true`. To grant a feature to
    # existing subscribers, create the item on each existing price point.
    # **Restoring a template item.** Restoring an archived product- or
    # component-level item, or creating one again for the same feature template,
    # also restores the price-point copies that were archived together with it
    # (for example, when the feature template was archived). If one of those
    # price points has subscribers without the feature, the call returns `422`
    # naming that price point, unless you send `propagate_to_subscriptions:
    # true`, which restores the copies and grants the feature to those
    # subscribers.
    # **Price points with subscribers.** When the feature catalog item is scoped
    # to a price point that already has subscribers and you don't send
    # `propagate_to_subscriptions: true`, the new feature applies to new
    # subscriptions only. The price point is cloned with its current features,
    # the new feature is applied to the clone, and the response carries the
    # clone's `price_point_id`. The feature catalog item in the response is also
    # a different record, with a new `id`: later calls for the clone must use
    # that `id`, not the original one. Existing subscribers stay on the original
    # price point, unchanged; sign new subscriptions up on the clone to give
    # them the change. A product price point has subscribers when any live
    # subscription (including one in `awaiting_signup`) is on it. Price points
    # that can't be cloned (archived or custom ones, or a component price point
    # with an interval on a site without multi-frequency) make the request
    # return `422`, with a message naming `propagate_to_subscriptions: true` as
    # the way to apply the change to existing subscribers instead.
    # @param [Integer] product_id Required parameter: The Advanced Billing id of
    # the product.
    # @param [CreateFeatureCatalogItemRequest] body Optional parameter: TODO:
    # type description here
    # @return [FeatureCatalogItemResponse] Response from the API call.
    def create_product_feature(product_id,
                               body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/products/{product_id}/features.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(product_id, key: 'product_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(FeatureCatalogItemResponse.method(:from_hash))
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

    # Returns a single feature catalog item attached to this product.
    # @param [Integer] product_id Required parameter: The Advanced Billing id of
    # the product.
    # @param [Integer] id Required parameter: The Advanced Billing id of the
    # feature catalog item.
    # @return [FeatureCatalogItemResponse] Response from the API call.
    def read_product_feature(product_id,
                             id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/products/{product_id}/features/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(product_id, key: 'product_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(FeatureCatalogItemResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden',
                                 ErrorListResponseException)
                    .local_error('404',
                                 'Not Found',
                                 APIException))
        .execute
    end

    # Updates the value or periodicity of a feature catalog item attached to
    # this product. A request that changes nothing returns the item as it is.
    # **Price points with subscribers.** When the feature catalog item is scoped
    # to a price point that already has subscribers and you don't send
    # `propagate_to_subscriptions: true`, the update applies to new
    # subscriptions only. The price point is cloned with its current features,
    # the update is applied to the clone, and the response carries the clone's
    # `price_point_id`. The feature catalog item in the response is also a
    # different record, with a new `id`: later calls for the clone must use that
    # `id`, not the original one. Existing subscribers stay on the original
    # price point, unchanged; sign new subscriptions up on the clone to give
    # them the change. A product price point has subscribers when any live
    # subscription (including one in `awaiting_signup`) is on it. Price points
    # that can't be cloned (archived or custom ones, or a component price point
    # with an interval on a site without multi-frequency) make the request
    # return `422`, with a message naming `propagate_to_subscriptions: true` as
    # the way to apply the change to existing subscribers instead.
    # @param [Integer] product_id Required parameter: The Advanced Billing id of
    # the product.
    # @param [Integer] id Required parameter: The Advanced Billing id of the
    # feature catalog item.
    # @param [UpdateFeatureCatalogItemRequest] body Optional parameter: TODO:
    # type description here
    # @return [FeatureCatalogItemResponse] Response from the API call.
    def update_product_feature(product_id,
                               id,
                               body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/products/{product_id}/features/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(product_id, key: 'product_id')
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
                    .deserialize_into(FeatureCatalogItemResponse.method(:from_hash))
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

    # Removes a feature catalog item from this product. Returns `204` when the
    # item is removed in place.
    # **Price points with subscribers.** When the feature catalog item is scoped
    # to a price point that already has subscribers and you don't send
    # `destroy_entitlements=true`, the removal applies to new subscriptions
    # only. The price point is cloned with its current features, the removal is
    # applied to the clone, and the call returns `200` with the archived feature
    # catalog item on the clone (carrying the clone's `price_point_id` and a new
    # `id`) instead of `204`. Existing subscribers stay on the original price
    # point, unchanged; sign new subscriptions up on the clone to give them the
    # change. A product price point has subscribers when any live subscription
    # (including one in `awaiting_signup`) is on it. Price points that can't be
    # cloned (archived or custom ones, or a component price point with an
    # interval on a site without multi-frequency) make the request return `422`,
    # with a message naming `destroy_entitlements=true` as the way to apply the
    # change to existing subscribers instead.
    # @param [Integer] product_id Required parameter: The Advanced Billing id of
    # the product.
    # @param [Integer] id Required parameter: The Advanced Billing id of the
    # feature catalog item.
    # @param [TrueClass | FalseClass] destroy_entitlements Optional parameter:
    # When `true`, permanently deletes this feature catalog item and every
    # entitlement it created, revoking subscriber access immediately. When
    # `false` (default), the feature catalog item is archived and existing
    # entitlements are preserved.
    # @return [FeatureCatalogItemResponse] Response from the API call.
    def remove_product_feature(product_id,
                               id,
                               destroy_entitlements: false)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/products/{product_id}/features/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(product_id, key: 'product_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(destroy_entitlements, key: 'destroy_entitlements'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .is_nullable_response(true)
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(FeatureCatalogItemResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden',
                                 ErrorListResponseException)
                    .local_error('404',
                                 'Not Found',
                                 APIException)
                    .local_error('422',
                                 'The price point has subscribers but can\'t be cloned (it is'\
                                  ' archived or custom, or it is a component price point with an'\
                                  ' interval on a site without multi-frequency). Send'\
                                  ' `destroy_entitlements=true` to remove the feature from its'\
                                  ' existing subscribers instead.',
                                 ErrorListResponseException))
        .execute
    end

    # Clears the archived state of a feature catalog item attached to this
    # product. Returns `422` if the parent feature template is still archived.
    # Restore the feature template first. Otherwise, restoring an item that
    # isn't archived returns it unchanged.
    # **Price points with subscribers.** When the feature catalog item is scoped
    # to a price point that already has subscribers and you don't send
    # `propagate_to_subscriptions=true`, the restore applies to new
    # subscriptions only. The price point is cloned with its current features,
    # the restore is applied to the clone, and the response carries the clone's
    # `price_point_id`. The feature catalog item in the response is also a
    # different record, with a new `id`: later calls for the clone must use that
    # `id`, not the original one. Existing subscribers stay on the original
    # price point, unchanged; sign new subscriptions up on the clone to give
    # them the change. A product price point has subscribers when any live
    # subscription (including one in `awaiting_signup`) is on it. Price points
    # that can't be cloned (archived or custom ones, or a component price point
    # with an interval on a site without multi-frequency) make the request
    # return `422`, with a message naming `propagate_to_subscriptions: true` as
    # the way to apply the change to existing subscribers instead.
    # @param [Integer] product_id Required parameter: The Advanced Billing id of
    # the product.
    # @param [Integer] id Required parameter: The Advanced Billing id of the
    # feature catalog item.
    # @param [TrueClass | FalseClass] propagate_to_subscriptions Optional
    # parameter: When `true`, the restored feature is applied to the existing
    # subscriptions on its price point. When `false` (default), an item scoped
    # to a price point with subscribers is restored on a clone of that price
    # point instead; a product- or component-level item is never cloned, and
    # returns `422` if a price-point copy it restores has subscribers without
    # the feature. See the description.
    # @return [FeatureCatalogItemResponse] Response from the API call.
    def restore_product_feature(product_id,
                                id,
                                propagate_to_subscriptions: false)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/products/{product_id}/features/{id}/restore.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(product_id, key: 'product_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(propagate_to_subscriptions, key: 'propagate_to_subscriptions'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(FeatureCatalogItemResponse.method(:from_hash))
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
