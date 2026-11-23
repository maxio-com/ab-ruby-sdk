
# Wallet Product Response

A Wallet Product is a Component created with no product family, so it returns the full Component field set under a `wallet_product` root instead of `component`.

## Structure

`WalletProductResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `wallet_product` | [`Component`](../../doc/models/component.md) | Required | - |

## Example

```ruby
wallet_product_response = WalletProductResponse.new(
  wallet_product: Component.new(
    id: 224,
    name: 'name0',
    handle: 'handle6',
    pricing_scheme: PricingScheme::PER_UNIT,
    unit_name: 'unit_name2',
    item_category: ItemCategory::ENUM_BUSINESS_SOFTWARE
  )
)
```

