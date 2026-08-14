
# Metadata

## Structure

`Metadata`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `value` | `String` | Optional | - |
| `resource_id` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `deleted_at` | `DateTime` | Optional | - |
| `metafield_id` | `Integer` | Optional | - |

## Example

```ruby
metadata = Metadata.new(
  id: 50,
  value: 'value8',
  resource_id: 134,
  name: 'name6',
  deleted_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

