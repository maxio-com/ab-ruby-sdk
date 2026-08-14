
# Create Product Family Request

## Structure

`CreateProductFamilyRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product_family` | [`CreateProductFamily`](../../doc/models/create-product-family.md) | Required | - |

## Example

```ruby
create_product_family_request = CreateProductFamilyRequest.new(
  product_family: CreateProductFamily.new(
    name: 'name0',
    handle: 'handle6',
    description: 'description0',
    surcharging: false
  )
)
```

