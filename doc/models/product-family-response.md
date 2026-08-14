
# Product Family Response

## Structure

`ProductFamilyResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product_family` | [`ProductFamily`](../../doc/models/product-family.md) | Optional | - |

## Example

```ruby
product_family_response = ProductFamilyResponse.new(
  product_family: ProductFamily.new(
    id: 14,
    name: 'name0',
    handle: 'handle6',
    accounting_code: 'accounting_code6',
    description: 'description0'
  )
)
```

