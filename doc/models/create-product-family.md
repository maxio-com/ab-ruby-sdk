
# Create Product Family

## Structure

`CreateProductFamily`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `handle` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `surcharging` | `TrueClass \| FalseClass` | Optional | Whether surcharging applies to this product family. Defaults to `true` when omitted. Only applied on sites where surcharging is enabled. |

## Example

```ruby
create_product_family = CreateProductFamily.new(
  name: 'name6',
  handle: 'handle2',
  description: 'description4',
  surcharging: false
)
```

