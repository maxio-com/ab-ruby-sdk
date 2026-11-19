
# Wallet Purchase Preview

A price quote for a purchase, without charging anything.

## Structure

`WalletPurchasePreview`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point_id` | `Integer` | Required | - |
| `currency` | `String` | Required | The three-letter currency code the `amount` is denominated in, matching the subscription's currency. |
| `quantity` | `String` | Required | The number of units the quote is for, as a decimal string. |
| `amount` | `String` | Required | The price for `quantity` units at this price point, as a decimal string. |

## Example

```ruby
wallet_purchase_preview = WalletPurchasePreview.new(
  price_point_id: 230,
  currency: 'USD',
  quantity: 'quantity6',
  amount: 'amount2'
)
```

