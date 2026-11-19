
# Active Wallets

## Structure

`ActiveWallets`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `total` | `Integer` | Required | Total count of active wallets drawing on this product. |
| `sample` | [`Array[WalletProductActiveWallet]`](../../doc/models/wallet-product-active-wallet.md) | Required | Up to 50 of the most recently created active wallets, newest first. |

## Example

```ruby
active_wallets = ActiveWallets.new(
  total: 164,
  sample: [
    WalletProductActiveWallet.new(
      id: 180,
      subscription_id: 34,
      company_name: 'company_name4',
      purchase_mechanism: 'purchase_mechanism8',
      price_point_name: 'price_point_name8'
    )
  ]
)
```

