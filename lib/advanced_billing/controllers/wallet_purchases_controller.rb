# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WalletPurchasesController
  class WalletPurchasesController < BaseController
    # Purchases prepaid units for the wallet and charges the subscription's
    # payment method for them, using the wallet's `price_point_id` unless a
    # different price point is named. A successful purchase writes a grant of
    # origin `purchase`, with its expiration following the funding entitlement's
    # grant expiration policy.
    # How "charged" works depends on the subscription's collection method. For
    # card/automatic collection, the payment is attempted immediately; a decline
    # writes nothing to the wallet, and the call fails with a `422` naming the
    # gateway's decline reason. For invoice-billed (remittance) subscriptions,
    # there's no immediate charge to decline: an invoice is drafted, the wallet
    # is credited right away, and the invoice is issued afterward. If issuing
    # the invoice fails at that point, the invoice is left in draft state and
    # reported for follow-up, but the call still returns `201` and the units
    # already credited are **not** rolled back. See [Preview Wallet
    # Purchase]($e/Wallet%20Purchases/previewWalletPurchase) to quote a price
    # before charging anything.
    # @param [Integer] wallet_id Required parameter: The Advanced Billing id of
    # the wallet.
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
    # @param [CreateWalletPurchaseRequest] body Optional parameter: TODO: type
    # description here
    # @return [WalletPurchaseResultResponse] Response from the API call.
    def create_wallet_purchase(wallet_id,
                               idempotency_key: nil,
                               body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/wallets/{wallet_id}/purchases.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(wallet_id, key: 'wallet_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WalletPurchaseResultResponse.method(:from_hash))
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
                                 'Not Found',
                                 WalletErrorResponseException)
                    .local_error('409',
                                 'Returned in two cases, both with nothing new charged or'\
                                  ' written. `idempotency_request_in_progress`: a purchase with'\
                                  ' the same `Idempotency-Key` is still running; retry with the'\
                                  ' same key once it finishes. `idempotency_key_outcome_unknown`:'\
                                  ' an earlier purchase with this key ended with a server error or'\
                                  ' an unexpected failure before its result was recorded, so it'\
                                  ' may or may not have charged the customer. Check the'\
                                  ' subscription\'s invoices before buying again under a new key.',
                                 WalletErrorResponseException)
                    .local_error('422',
                                 "Validation or payment failure, or an `Idempotency-Key` reused'\
                                  ' with a different request (`idempotency_key_mismatch`).'\
                                  ' Validation failures include a missing `purchase` root, a'\
                                  ' missing, malformed, non-positive, or out-of-range `quantity`,'\
                                  ' a `price_point_id` that doesn't belong to the wallet's billing'\
                                  ' product, an archived, custom, or otherwise unusable price'\
                                  ' point, no price point to purchase at (neither sent nor set on'\
                                  ' the wallet), a memo over 255 characters, an archived wallet, a'\
                                  ' price point with no price in the subscription's currency, a'\
                                  ' declined payment (message includes the gateway's own detail),'\
                                  ' an invoice that couldn't be created at all, a payment that'\
                                  ' settled but whose units could not be credited'\
                                  ' (`purchase_paid_but_uncredited`, whose message ends with the'\
                                  ' paid invoice's uid so it can be reconciled), a declined'\
                                  ' payment whose invoice could not be voided and is still open'\
                                  ' (`purchase_declined_invoice_open`), a purchase that failed'\
                                  ' before payment and left its invoice open'\
                                  ' (`purchase_invoice_left_open`), and a wallet whose billing'\
                                  ' product isn't a Wallet Product (only possible for a wallet'\
                                  ' created before Wallet Products became required).\n'\
                                  '\n`purchase_paid_but_uncredited`,'\
                                  ' `purchase_declined_invoice_open` and'\
                                  ' `purchase_invoice_left_open` bodies also carry `invoice_uid`'\
                                  ' and `invoice_number`. With an `Idempotency-Key`, these three'\
                                  ' responses are stored and replayed like a success.",
                                 WalletErrorResponseException)
                    .local_error('500',
                                 '`purchase_payment_outcome_unknown`: the payment was attempted'\
                                  ' but the gateway did not confirm whether the card was charged.'\
                                  ' Nothing is credited by this call; if the invoice turns out to'\
                                  ' be paid, the units are credited automatically (see [Purchasing'\
                                  ' Units](page:introduction/basic-concepts'\
                                  "/wallets#purchasing-units)). The body includes `invoice_uid`"\
                                  ' and `invoice_number` when an invoice was created; check that'\
                                  ' invoice before buying again. Retrying with the same'\
                                  ' `Idempotency-Key` returns `409`'\
                                  ' (`idempotency_key_outcome_unknown`) rather than charging again'\
                                  '.',
                                 WalletErrorResponseException))
        .execute
    end

    # Quotes the price for a purchase at the given quantity and price point,
    # without charging the payment method or writing to the wallet. Takes the
    # same parameters as [Create Wallet
    # Purchase]($e/Wallet%20Purchases/createWalletPurchase).
    # @param [Integer] wallet_id Required parameter: The Advanced Billing id of
    # the wallet.
    # @param [CreateWalletPurchaseRequest] body Optional parameter: TODO: type
    # description here
    # @return [WalletPurchasePreviewResponse] Response from the API call.
    def preview_wallet_purchase(wallet_id,
                                body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/wallets/{wallet_id}/purchases/preview.json',
                                     Server::PRODUCTION)
                   .template_param(new_parameter(wallet_id, key: 'wallet_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(WalletPurchasePreviewResponse.method(:from_hash))
                    .local_error('403',
                                 'Forbidden. The response body is plain text (`403 Forbidden`),'\
                                  ' not JSON. Returned when the Wallets feature isn\'t enabled for'\
                                  ' the site.',
                                 APIException)
                    .local_error('404',
                                 'Not Found',
                                 WalletErrorResponseException)
                    .local_error('422',
                                 'Validation failure. Same cases as Create Wallet Purchase,'\
                                  ' minus the payment-outcome cases, since nothing is charged.',
                                 WalletErrorResponseException))
        .execute
    end
  end
end
