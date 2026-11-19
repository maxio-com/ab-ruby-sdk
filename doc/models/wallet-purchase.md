
# Wallet Purchase

A completed unit purchase.

## Structure

`WalletPurchase`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | The id of the grant this purchase created. When the wallet was overdrawn by at least the purchased quantity, the units repay the debt and the grant is still created, with `remaining` of `0` and `original` equal to the purchased quantity. |
| `price_point_id` | `Integer` | Required | The price point the purchase was priced at. |
| `invoice_uid` | `String` | Required | The uid of the invoice created to collect payment for this purchase. |
| `quantity` | `String` | Required | The number of units purchased, as a decimal string. |
| `expires_at` | `DateTime` | Required | When the purchased units expire, following the funding entitlement's grant expiration policy. `null` when the wallet has no funding entitlement or its entitlements disagree on an expiration policy. |

## Example

```ruby
wallet_purchase = WalletPurchase.new(
  id: 172,
  price_point_id: 206,
  invoice_uid: 'invoice_uid6',
  quantity: 'quantity2',
  expires_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

