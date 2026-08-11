
# Product Family

## Structure

`ProductFamily`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `handle` | `String` | Optional | - |
| `accounting_code` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `surcharging` | `TrueClass \| FalseClass` | Optional | Whether surcharging applies to this product family. Only included on sites where surcharging is enabled. |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `archived_at` | `DateTime` | Optional | Timestamp indicating when this product family was archived. `null` if the product family is not archived. |

## Example

```ruby
product_family = ProductFamily.new(
  id: 14,
  name: 'name0',
  handle: 'handle6',
  accounting_code: 'accounting_code6',
  description: 'description0'
)
```

