# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WalletProductsController
  class WalletProductsController < BaseController
    # Lists the Wallet Products on your site.
    # @param [TrueClass | FalseClass] include_archived Optional parameter:
    # Includes archived Wallet Products in the result. Defaults to `false`.
    # Ignored when `status` is also sent.
    # @param [Status1] status Optional parameter: Restricts the result by
    # status, and overrides `include_archived` when sent. An unrecognized value
    # falls back to `active` rather than returning `422`.
    # @param [String] q Optional parameter: Restricts the result to Wallet
    # Products whose name, handle, or unit name contains this substring
    # (case-insensitive).
    # @param [SortBy1] sort_by Optional parameter: The field to sort results by.
    # An unrecognized value falls back to `name`.
    # @param [SortDirection] sort_direction Optional parameter: The sort
    # direction. Anything other than `desc` is treated as `asc`.
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
    # @return [WalletProductsListResponse] Response from the API call.
    def list_wallet_products(include_archived: nil,
                             status: nil,
                             q: nil,
                             sort_by: SortBy1::NAME,
                             sort_direction: SortDirection::ASC,
                             page: 1,
                             per_page: 20)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/wallet_products.json',
                                     Server::PRODUCTION)
                   .query_param(new_parameter(include_archived, key: 'include_archived'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(q, key: 'q'))
                   .query_param(new_parameter(sort_by, key: 'sort_by'))
                   .query_param(new_parameter(sort_direction, key: 'sort_direction'))
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(per_page, key: 'per_page'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WalletProductsListResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden. The response body is plain text (`403 Forbidden`),'\
                                  ' not JSON. Returned when the Wallets feature isn\'t enabled for'\
                                  ' the site.',
                                 APIException))
        .execute
    end

    # Creates a Wallet Product: a billing product with no product family, meant
    # to denominate wallets and to be purchased through [Create Wallet
    # Purchase]($e/Wallet%20Purchases/createWalletPurchase). It's a Component
    # under the hood, so it returns the full Component field set, and can
    # optionally be priced with one or more price points in the same call.
    # @param [CreateWalletProductRequest] body Optional parameter: TODO: type
    # description here
    # @return [WalletProductResponse] Response from the API call.
    def create_wallet_product(body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/wallet_products.json',
                                     Server::PRODUCTION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WalletProductResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden. The response body is plain text (`403 Forbidden`),'\
                                  ' not JSON. Returned when the Wallets feature isn\'t enabled for'\
                                  ' the site.',
                                 APIException)
                    .local_error('422',
                                 'Validation failure. Includes a `product_family_id` (rejected'\
                                  ' rather than ignored), and any failure validating a price point'\
                                  ' in `price_point`/`price_points`, which rolls back the whole'\
                                  ' call, including the Wallet Product itself.',
                                 WalletErrorResponseException))
        .execute
    end

    # Returns the Wallet Product.
    # @param [String] id Required parameter: The Advanced Billing id of the
    # Wallet Product, or its handle prefixed with `handle:` (for example
    # `handle:token-pack`). A bare handle returns `404`.
    # @return [WalletProductResponse] Response from the API call.
    def read_wallet_product(id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/wallet_products/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WalletProductResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden. The response body is plain text (`403 Forbidden`),'\
                                  ' not JSON. Returned when the Wallets feature isn\'t enabled for'\
                                  ' the site.',
                                 APIException)
                    .local_error('404',
                                 'Not Found',
                                 WalletErrorResponseException))
        .execute
    end

    # Updates the Wallet Product's catalog-facing fields. Omitted fields are
    # left unchanged. Unlike [Create Wallet
    # Product]($e/Wallet%20Products/createWalletProduct), this does not accept
    # `unit_name`, `handle`, `price_point`, or `price_points`; see the request
    # schema for which fields are actually mutable.
    # @param [String] id Required parameter: The Advanced Billing id of the
    # Wallet Product, or its handle prefixed with `handle:` (for example
    # `handle:token-pack`). A bare handle returns `404`.
    # @param [UpdateWalletProductRequest] body Optional parameter: TODO: type
    # description here
    # @return [WalletProductResponse] Response from the API call.
    def update_wallet_product(id,
                              body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/wallet_products/{id}.json',
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
                    .deserialize_into(WalletProductResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden. The response body is plain text (`403 Forbidden`),'\
                                  ' not JSON. Returned when the Wallets feature isn\'t enabled for'\
                                  ' the site.',
                                 APIException)
                    .local_error('404',
                                 'Not Found',
                                 WalletErrorResponseException)
                    .local_error('422',
                                 'Validation failure.',
                                 WalletErrorResponseException))
        .execute
    end

    # Returns everything drawing on this Wallet Product: the wallet templates
    # billing through it, split into ones using its default price point and ones
    # overriding it, plus a sample of up to 50 of the active wallets actually
    # created from them. A wallet template can appear more than once in
    # `wallet_templates`/`price_point_overrides`, once per Feature and owning
    # plan/component sharing it, so these arrays aren't one row per template.
    # @param [String] id Required parameter: The Advanced Billing id of the
    # Wallet Product, or its handle prefixed with `handle:` (for example
    # `handle:token-pack`). A bare handle returns `404`.
    # @return [WalletProductUsageResponse] Response from the API call.
    def read_wallet_product_usage(id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/wallet_products/{id}/usage.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WalletProductUsageResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden. The response body is plain text (`403 Forbidden`),'\
                                  ' not JSON. Returned when the Wallets feature isn\'t enabled for'\
                                  ' the site.',
                                 APIException)
                    .local_error('404',
                                 'Not Found',
                                 WalletErrorResponseException))
        .execute
    end

    # Archives the Wallet Product. Refuses when an active Feature's
    # `wallet_behavior` still points at it, or when it's used in a scheduled
    # renewal. This protects Feature-provisioned wallets, but not a wallet
    # created manually against this product: a manual wallet can be left
    # denominated by an archived Wallet Product, and [Create Wallet
    # Purchase]($e/Wallet%20Purchases/createWalletPurchase) doesn't check
    # whether the billing product is archived before pricing and charging a
    # purchase against it.
    # @param [String] id Required parameter: The Advanced Billing id of the
    # Wallet Product, or its handle prefixed with `handle:` (for example
    # `handle:token-pack`). A bare handle returns `404`.
    # @return [WalletProductResponse] Response from the API call.
    def archive_wallet_product(id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/wallet_products/{id}/archive.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WalletProductResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden. The response body is plain text (`403 Forbidden`),'\
                                  ' not JSON. Returned when the Wallets feature isn\'t enabled for'\
                                  ' the site.',
                                 APIException)
                    .local_error('404',
                                 'Not Found',
                                 WalletErrorResponseException)
                    .local_error('422',
                                 'The Wallet Product is already archived, is in use by one or'\
                                  ' more Features, or is in use by a scheduled renewal.',
                                 WalletErrorResponseException))
        .execute
    end

    # Restores an archived Wallet Product.
    # @param [String] id Required parameter: The Advanced Billing id of the
    # Wallet Product, or its handle prefixed with `handle:` (for example
    # `handle:token-pack`). A bare handle returns `404`.
    # @return [WalletProductResponse] Response from the API call.
    def unarchive_wallet_product(id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/wallet_products/{id}/unarchive.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WalletProductResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden. The response body is plain text (`403 Forbidden`),'\
                                  ' not JSON. Returned when the Wallets feature isn\'t enabled for'\
                                  ' the site.',
                                 APIException)
                    .local_error('404',
                                 'Not Found',
                                 WalletErrorResponseException)
                    .local_error('422',
                                 'The Wallet Product is not archived.',
                                 WalletErrorResponseException))
        .execute
    end
  end
end
