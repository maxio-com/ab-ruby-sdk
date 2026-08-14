# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # SubscriptionRenewalsController
  class SubscriptionRenewalsController < BaseController
    # Creates a scheduled renewal configuration for a subscription. The
    # scheduled renewal is based on the subscription’s current product and
    # component setup.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [ScheduledRenewalConfigurationRequest] body Optional parameter:
    # TODO: type description here
    # @return [ScheduledRenewalConfigurationResponse] Response from the API call.
    def create_scheduled_renewal_configuration(subscription_id,
                                               body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/scheduled_renewals.json',
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
                    .deserialize_into(ScheduledRenewalConfigurationResponse.method(:from_hash))
                    .local_error('422',
                                 'Unprocessable Entity (WebDAV)',
                                 ErrorListResponseException))
        .execute
    end

    # Lists scheduled renewal configurations for the subscription and permits an
    # optional status query filter.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [Status] status Optional parameter: (Optional) Status filter for
    # scheduled renewal configurations.
    # @return [ScheduledRenewalConfigurationsResponse] Response from the API call.
    def list_scheduled_renewal_configurations(subscription_id,
                                              status: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions/{subscription_id}/scheduled_renewals.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(status, key: 'status'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ScheduledRenewalConfigurationsResponse.method(:from_hash)))
        .execute
    end

    # Retrieves the configuration settings for the scheduled renewal.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [Integer] id Required parameter: The renewal id.
    # @return [ScheduledRenewalConfigurationResponse] Response from the API call.
    def read_scheduled_renewal_configuration(subscription_id,
                                             id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions/{subscription_id}/scheduled_renewals/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ScheduledRenewalConfigurationResponse.method(:from_hash)))
        .execute
    end

    # Updates an existing configuration.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [Integer] id Required parameter: The renewal id.
    # @param [ScheduledRenewalConfigurationRequest] body Optional parameter:
    # TODO: type description here
    # @return [ScheduledRenewalConfigurationResponse] Response from the API call.
    def update_scheduled_renewal_configuration(subscription_id,
                                               id,
                                               body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/subscriptions/{subscription_id}/scheduled_renewals/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
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
                    .deserialize_into(ScheduledRenewalConfigurationResponse.method(:from_hash))
                    .local_error('422',
                                 'Unprocessable Entity (WebDAV)',
                                 ErrorListResponseException))
        .execute
    end

    # Schedules a future lock-in date for the renewal.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [Integer] id Required parameter: The renewal id.
    # @param [ScheduledRenewalLockInRequest] body Optional parameter: TODO: type
    # description here
    # @return [ScheduledRenewalConfigurationResponse] Response from the API call.
    def schedule_scheduled_renewal_lock_in(subscription_id,
                                           id,
                                           body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/subscriptions/{subscription_id}/scheduled_renewals/{id}/schedule_lock_in.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
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
                    .deserialize_into(ScheduledRenewalConfigurationResponse.method(:from_hash))
                    .local_error('422',
                                 'Unprocessable Entity (WebDAV)',
                                 ErrorListResponseException))
        .execute
    end

    # Locks in the renewal immediately.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [Integer] id Required parameter: The renewal id.
    # @return [ScheduledRenewalConfigurationResponse] Response from the API call.
    def lock_in_scheduled_renewal_immediately(subscription_id,
                                              id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/subscriptions/{subscription_id}/scheduled_renewals/{id}/immediate_lock_in.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ScheduledRenewalConfigurationResponse.method(:from_hash))
                    .local_error('422',
                                 'Unprocessable Entity (WebDAV)',
                                 ErrorListResponseException))
        .execute
    end

    # Restores a scheduled renewal configuration to an editable state.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [Integer] id Required parameter: The renewal id.
    # @return [ScheduledRenewalConfigurationResponse] Response from the API call.
    def unpublish_scheduled_renewal_configuration(subscription_id,
                                                  id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/subscriptions/{subscription_id}/scheduled_renewals/{id}/unpublish.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ScheduledRenewalConfigurationResponse.method(:from_hash))
                    .local_error('422',
                                 'Unprocessable Entity (WebDAV)',
                                 ErrorListResponseException))
        .execute
    end

    # Cancels a scheduled renewal configuration.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [Integer] id Required parameter: The renewal id.
    # @return [ScheduledRenewalConfigurationResponse] Response from the API call.
    def cancel_scheduled_renewal_configuration(subscription_id,
                                               id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/subscriptions/{subscription_id}/scheduled_renewals/{id}/cancel.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ScheduledRenewalConfigurationResponse.method(:from_hash))
                    .local_error('422',
                                 'Unprocessable Entity (WebDAV)',
                                 ErrorListResponseException))
        .execute
    end

    # Adds product and component line items to the scheduled renewal.
    # If your site has list vs sales pricing enabled, accepts
    # renewal_configuration_item.custom_price.list_price_point_id, validates and
    # persists it; omitted value follows existing/default behavior; with list vs
    # sales pricing disabled, parameter is ignored (no validation/behavioral
    # impact). This functionality is supported in the API, but is not currently
    # supported in SDKs.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [Integer] scheduled_renewals_configuration_id Required parameter:
    # The scheduled renewal configuration id.
    # @param [ScheduledRenewalConfigurationItemRequest] body Optional parameter:
    # TODO: type description here
    # @return [ScheduledRenewalConfigurationItemResponse] Response from the API call.
    def create_scheduled_renewal_configuration_item(subscription_id,
                                                    scheduled_renewals_configuration_id,
                                                    body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/scheduled_renewals/{scheduled_renewals_configuration_id}/configuration_items.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(scheduled_renewals_configuration_id, key: 'scheduled_renewals_configuration_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ScheduledRenewalConfigurationItemResponse.method(:from_hash))
                    .local_error('422',
                                 'Unprocessable Entity (WebDAV)',
                                 ErrorListResponseException))
        .execute
    end

    # Updates an existing configuration item’s pricing and quantity.
    # If you site has list vs sales pricing enabled, accepts
    # renewal_configuration_item.custom_price.list_price_point_id, validates and
    # persists it; omitted value follows existing/default behavior; with list vs
    # sales pricing disabled, parameter is ignored (no validation/behavioral
    # impact). This functionality is supported in the API, but is not currently
    # supported in SDKs.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [Integer] scheduled_renewals_configuration_id Required parameter:
    # The scheduled renewal configuration id.
    # @param [Integer] id Required parameter: The scheduled renewal
    # configuration item id.
    # @param [ScheduledRenewalUpdateRequest] body Optional parameter: TODO: type
    # description here
    # @return [ScheduledRenewalConfigurationItemResponse] Response from the API call.
    def update_scheduled_renewal_configuration_item(subscription_id,
                                                    scheduled_renewals_configuration_id,
                                                    id,
                                                    body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/subscriptions/{subscription_id}/scheduled_renewals/{scheduled_renewals_configuration_id}/configuration_items/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(scheduled_renewals_configuration_id, key: 'scheduled_renewals_configuration_id')
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
                    .deserialize_into(ScheduledRenewalConfigurationItemResponse.method(:from_hash))
                    .local_error('422',
                                 'Unprocessable Entity (WebDAV)',
                                 ErrorListResponseException))
        .execute
    end

    # Removes an item from the pending renewal configuration.
    # @param [Integer] subscription_id Required parameter: The Chargify id of
    # the subscription.
    # @param [Integer] scheduled_renewals_configuration_id Required parameter:
    # The scheduled renewal configuration id.
    # @param [Integer] id Required parameter: The scheduled renewal
    # configuration item id.
    # @return [void] Response from the API call.
    def delete_scheduled_renewal_configuration_item(subscription_id,
                                                    scheduled_renewals_configuration_id,
                                                    id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/subscriptions/{subscription_id}/scheduled_renewals/{scheduled_renewals_configuration_id}/configuration_items/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(scheduled_renewals_configuration_id, key: 'scheduled_renewals_configuration_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .is_response_void(true)
                    .local_error('422',
                                 'Unprocessable Entity (WebDAV)',
                                 ErrorListResponseException))
        .execute
    end
  end
end
