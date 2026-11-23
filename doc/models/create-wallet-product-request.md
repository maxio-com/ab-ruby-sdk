
# Create Wallet Product Request

Does not accept `product_family_id`: a Wallet Product never belongs to a product family. The underlying endpoint accepts the param, but only to reject it; sending one returns `422` ("Product family cannot be set on a wallet product") rather than silently ignoring it.

## Structure

`CreateWalletProductRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `wallet_product` | [`WalletProduct`](../../doc/models/wallet-product.md) | Required | - |

## Example

```ruby
create_wallet_product_request = CreateWalletProductRequest.new(
  wallet_product: WalletProduct.new(
    name: 'name0',
    unit_name: 'unit_name2',
    handle: 'handle6',
    description: 'description0',
    taxable: false,
    tax_code: 'tax_code8',
    accounting_code: 'accounting_code6',
    item_category: ItemCategory::ENUM_BUSINESS_SOFTWARE
  )
)
```

