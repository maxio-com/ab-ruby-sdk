
# Wallet Product Usage Count

A rollup of what's using this Wallet Product, for the catalog listing.

## Structure

`WalletProductUsageCount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `wallet_configurations` | `Integer` | Required | Number of wallet templates billing through this product, whether or not any wallet has been created from them yet. |
| `active_wallets` | `Integer` | Required | Number of active (non-archived) wallets currently denominated by this product. |

## Example

```ruby
wallet_product_usage_count = WalletProductUsageCount.new(
  wallet_configurations: 218,
  active_wallets: 8
)
```

