# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WalletsController
  class WalletsController < BaseController
    # Lists the wallets on your site, in creation order, paginated. Without
    # `subscription_id`, returns every wallet on the site. The API key is the
    # tenancy boundary; `subscription_id` only narrows the result set further.
    # Archived wallets are included unless you filter them out with
    # `status=active`.
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
    # @param [Integer] subscription_id Optional parameter: Restricts the result
    # to wallets owned by this subscription.
    # @param [Status2] status Optional parameter: Restricts the result by wallet
    # status. An unrecognized value returns `422` rather than being silently
    # ignored.
    # @return [WalletsListResponse] Response from the API call.
    def list_wallets(page: 1,
                     per_page: 20,
                     subscription_id: nil,
                     status: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/wallets.json',
                                     Server::PRODUCTION)
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(per_page, key: 'per_page'))
                   .query_param(new_parameter(subscription_id, key: 'subscription_id'))
                   .query_param(new_parameter(status, key: 'status'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WalletsListResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden. The response body is plain text (`403 Forbidden`),'\
                                  ' not JSON. Returned when the Wallets feature isn\'t enabled for'\
                                  ' the site.',
                                 APIException)
                    .local_error('422',
                                 'Unprocessable Entity (WebDAV)',
                                 WalletErrorResponseException))
        .execute
    end

    # Creates a wallet owned by a subscription and denominated by a [Wallet
    # Product]($e/Wallet%20Products/createWalletProduct): only a Wallet Product
    # can denominate a wallet, not an ordinary component. The Wallet Product
    # must be active; it never belongs to a product family, so there's no family
    # check against the subscription. It's **immutable for the life of the
    # wallet**; there's no way to repoint an existing wallet at a different one.
    # This endpoint always creates a `manual` wallet. To provision a wallet
    # automatically from a usage-limit entitlement instead, configure
    # `wallet_behavior` on the Feature behind that entitlement (see [the Wallets
    # concept
    # guide](page:introduction/basic-concepts/wallets#provisioning-a-wallet-from
    # -a-feature)) rather than sending `entitlement_id` here.
    # @param [String] idempotency_key Optional parameter: A key you generate,
    # such as a UUID, that makes retrying this request safe. 1 to 255 printable
    # ASCII characters; surrounding double quotes are ignored. Keys are scoped
    # to your site and kept for at least 24 hours.  The first request with a key
    # runs normally. A retry with the same key, method, path and query string,
    # and a byte-identical body returns the stored status and body of that first
    # request without running it again. The same key with a different request
    # returns `422` (`idempotency_key_mismatch`). A retry that arrives while the
    # first request is still running waits for it to finish, and returns `409`
    # (`idempotency_request_in_progress`) only if that wait times out; on Create
    # Wallet Purchase the `409` is immediate. Only successful responses are
    # stored, so a failed request can be retried with the same key. When this
    # header is sent, `uniqueness_token` is not checked.  See [Idempotent
    # retries](page:introduction/basic-concepts/wallets#idempotent-retries) for
    # the details, including how wallet purchases differ.
    # @param [CreateWalletRequest] body Optional parameter: TODO: type
    # description here
    # @return [WalletResponse] Response from the API call.
    def create_wallet(idempotency_key: nil,
                      body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/wallets.json',
                                     Server::PRODUCTION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WalletResponse.method(:from_hash))
                    .local_error('400',
                                 'The `Idempotency-Key` header is empty, longer than 255'\
                                  ' characters, or contains characters other than printable ASCII.'\
                                  ' Nothing is written.',
                                 WalletErrorResponseException)
                    .local_error('403',
                                 'Forbidden. The response body is plain text (`403 Forbidden`),'\
                                  ' not JSON. Returned when the Wallets feature isn\'t enabled for'\
                                  ' the site.',
                                 APIException)
                    .local_error('404',
                                 'Unknown or cross-site subscription or meter, or a'\
                                  ' `wallet_product_id` that doesn\'t resolve to a Wallet Product'\
                                  ' on this site.',
                                 WalletErrorResponseException)
                    .local_error('409',
                                 'A request with the same `Idempotency-Key` was still being'\
                                  ' processed when this retry\'s wait for it timed out'\
                                  ' (`idempotency_request_in_progress`). Nothing is written; retry'\
                                  ' with the same key once it finishes.',
                                 WalletErrorResponseException)
                    .local_error('422',
                                 'Validation failure, or an `Idempotency-Key` reused with a'\
                                  ' different request (`idempotency_key_mismatch`). Validation'\
                                  ' failures include a missing or archived `wallet_product_id`; a'\
                                  ' `price_point_id` that\'s missing, archived, a'\
                                  ' subscription-specific custom price point, or doesn\'t belong'\
                                  ' to the Wallet Product; an invalid `depletion_policy` or'\
                                  ' `hard_stop_overflow` value; a meter that isn\'t a `sum` or'\
                                  ' `count` meter; an invalid `conversion_rate`; a subscription'\
                                  ' with no reference, when pairing a meter whose stream bills by'\
                                  ' subscription reference; and the `initial_balance` /'\
                                  ' `initial_balance_expires_at` error cases described on those'\
                                  ' fields. Also returned for `entitlement_id`: this endpoint'\
                                  ' never accepts it, and rejects it with the message shown below'\
                                  ' rather than silently ignoring it. Also returned when'\
                                  ' `subscription_id` names a prepaid subscription: a wallet would'\
                                  ' double-meter a balance the subscription already tracks on its'\
                                  ' own, so the two are mutually exclusive.',
                                 WalletErrorResponseException))
        .execute
    end

    # Returns the wallet's balance and grant breakdown. For an active, metered
    # wallet on a site with metered consumption enabled, this is the only
    # operation that computes a live balance from meter usage; see the wallet
    # resource's `metered_*` fields. It is also the only operation where
    # `balance` can differ from `posted_balance`, and a grant's `remaining` from
    # its `posted_remaining`: the pending usage is drawn from the grants in
    # drain order, so the grants' `remaining` add up to `balance`. Readable
    # regardless of status. Archiving a wallet doesn't affect reads.
    # @param [Integer] id Required parameter: The Advanced Billing id of the
    # wallet.
    # @return [WalletResponse] Response from the API call.
    def read_wallet(id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/wallets/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WalletResponse.method(:from_hash))
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

    # Archives the wallet: blocks further grants, debits, adjustments, and
    # purchases (each returns `422`), stops any metered drawdown, and stops
    # recurring funding (its schedule is deactivated with reason
    # `wallet_archived`, not removed), while reads and the ledger stay
    # available. Nothing already on the wallet is destroyed or clawed back, but
    # nothing on it can be spent either, by any path, once archived. Idempotent:
    # archiving an already-archived wallet returns the same `200`. There is no
    # restore endpoint.
    # @param [Integer] id Required parameter: The Advanced Billing id of the
    # wallet.
    # @return [WalletResponse] Response from the API call.
    def archive_wallet(id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/wallets/{id}.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WalletResponse.method(:from_hash))
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

    # Updates the wallet's editable attributes. Only `name` is editable; any
    # other attribute in the body is ignored. Send only the attributes to
    # change.
    # @param [Integer] id Required parameter: The Advanced Billing id of the
    # wallet.
    # @param [UpdateWalletRequest] body Optional parameter: TODO: type
    # description here
    # @return [WalletResponse] Response from the API call.
    def update_wallet(id,
                      body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/wallets/{id}.json',
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
                    .deserialize_into(WalletResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden. The response body is plain text (`403 Forbidden`),'\
                                  ' not JSON. Returned when the Wallets feature isn\'t enabled for'\
                                  ' the site.',
                                 APIException)
                    .local_error('404',
                                 'Not Found',
                                 WalletErrorResponseException)
                    .local_error('422',
                                 'Validation failure. Includes a body with no editable attribute'\
                                  ' (`parameter_missing`), a `name` over 255 characters'\
                                  ' (`validation_failed`), and an archived wallet'\
                                  ' (`wallet_archived`).',
                                 WalletErrorResponseException))
        .execute
    end
  end
end
