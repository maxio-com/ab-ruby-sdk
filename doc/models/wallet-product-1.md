
# Wallet Product 1

## Structure

`WalletProduct1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `taxable` | `TrueClass \| FalseClass` | Optional | - |
| `tax_code` | `String` | Optional | - |
| `accounting_code` | `String` | Optional | - |
| `item_category` | [`ItemCategory`](../../doc/models/item-category.md) | Optional | One of the following: Business Software, Consumer Software, Digital Services, Physical Goods, Other |

## Example

```ruby
wallet_product1 = WalletProduct1.new(
  name: 'name0',
  description: 'description0',
  taxable: false,
  tax_code: 'tax_code8',
  accounting_code: 'accounting_code6',
  item_category: ItemCategory::ENUM_BUSINESS_SOFTWARE
)
```

