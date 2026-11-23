# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # EntitlementsController
  class EntitlementsController < BaseController
    # Returns every feature a subscription is entitled to, collapsed into one
    # entry per feature key and periodicity window across all products and
    # components on the subscription. A `usage_limit` feature granted with two
    # different periodicities comes back as two entries sharing one
    # `feature_key`, each identified by its own `periodicity_key`.
    # When more than one product or component grants the same feature key and
    # periodicity, the values are combined:
    # - **`access_right`** features are combined with a boolean OR. If any
    # contributor grants access, the aggregate is `true`. `source_products` only
    # lists the contributors that granted `true`.
    # - **`usage_limit`** features are summed across every contributor sharing
    # the same periodicity window. `source_products` lists every contributor.
    # Grants with different periodicities are not summed together. Each
    # periodicity is returned as a separate entry.
    # - **`service_right`** features are not combined: one contributor's value
    # wins. Do not rely on which one when several grant the same feature key.
    # `enabled` reflects both the aggregated value and the subscription's state.
    # The field is `false` whenever the subscription is not in a live state
    # (`active`, `trialing`, `assessing`, `past_due`, `soft_failure`),
    # regardless of the aggregated value. Entitlements deliberately stay enabled
    # through dunning.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @return [AggregatedEntitlementsResponse] Response from the API call.
    def read_subscription_entitlements(subscription_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions/{subscription_id}/entitlements.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(AggregatedEntitlementsResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden',
                                 ErrorListResponseException)
                    .local_error('404',
                                 'Not Found',
                                 APIException))
        .execute
    end
  end
end
