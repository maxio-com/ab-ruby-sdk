
# Reason Code

## Structure

`ReasonCode`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `site_id` | `Integer` | Optional | - |
| `code` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `position` | `Integer` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |

## Example

```ruby
reason_code = ReasonCode.new(
  id: 240,
  site_id: 166,
  code: 'code4',
  description: 'description6',
  position: 14
)
```

