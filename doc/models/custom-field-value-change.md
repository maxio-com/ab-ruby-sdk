
# Custom Field Value Change

## Structure

`CustomFieldValueChange`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `event_type` | `String` | Required | - |
| `metafield_name` | `String` | Required | - |
| `metafield_id` | `Integer` | Required | - |
| `old_value` | `String` | Required | - |
| `new_value` | `String` | Required | - |
| `resource_type` | `String` | Required | - |
| `resource_id` | `Integer` | Required | - |

## Example

```ruby
custom_field_value_change = CustomFieldValueChange.new(
  event_type: 'event_type0',
  metafield_name: 'metafield_name4',
  metafield_id: 176,
  old_value: 'old_value4',
  new_value: 'new_value0',
  resource_type: 'resource_type4',
  resource_id: 232
)
```

