
# Wallet Product Price Point Summary

A summary of the Wallet Product's default price point, for rendering a catalog listing without a separate price points call.

## Structure

`WalletProductPricePointSummary`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `archived_count` | `Integer` | Optional | Number of archived price points on this Wallet Product. |
| `pricing_scheme` | `String` | Optional | The default price point's pricing scheme. `null` if the Wallet Product has no default price point. |
| `tier_count` | `Integer` | Optional | Number of price brackets on the default price point. A `per_unit` scheme always stores exactly one synthesized bracket, so this is `1` for `per_unit`, not `0`. |
| `entry_price` | `String` | Optional | The unit price of the default price point's first bracket, as a decimal string. `null` if there are no brackets. |
| `final_price` | `String` | Optional | The unit price of the default price point's last bracket, as a decimal string. `null` if there are no brackets. |

## Example

```ruby
wallet_product_price_point_summary = WalletProductPricePointSummary.new(
  archived_count: 2,
  pricing_scheme: 'pricing_scheme2',
  tier_count: 44,
  entry_price: 'entry_price4',
  final_price: 'final_price0'
)
```

