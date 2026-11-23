
# Wallet Product Usage Response

## Structure

`WalletProductUsageResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `wallet_templates` | [`Array[WalletProductUsageTemplate]`](../../doc/models/wallet-product-usage-template.md) | Required | Wallet templates billing through this product at its default price point. |
| `price_point_overrides` | [`Array[WalletProductUsageTemplate]`](../../doc/models/wallet-product-usage-template.md) | Required | Wallet templates billing through this product at a price point other than the default. |
| `active_wallets` | [`ActiveWallets`](../../doc/models/active-wallets.md) | Required | - |

## Example

```ruby
wallet_product_usage_response = WalletProductUsageResponse.new(
  wallet_templates: [
    WalletProductUsageTemplate.new(
      plan_name: 'plan_name4',
      wallet_template_name: 'wallet_template_name2',
      unit_name: 'unit_name4',
      purchase_mechanism: 'purchase_mechanism2',
      price_point_name: 'price_point_name4'
    )
  ],
  price_point_overrides: [
    WalletProductUsageTemplate.new(
      plan_name: 'plan_name0',
      wallet_template_name: 'wallet_template_name2',
      unit_name: 'unit_name0',
      purchase_mechanism: 'purchase_mechanism8',
      price_point_name: 'price_point_name8'
    )
  ],
  active_wallets: ActiveWallets.new(
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
)
```

