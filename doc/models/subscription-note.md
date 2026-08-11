
# Subscription Note

## Structure

`SubscriptionNote`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `body` | `String` | Optional | - |
| `subscription_id` | `Integer` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `sticky` | `TrueClass \| FalseClass` | Optional | - |

## Example

```ruby
subscription_note = SubscriptionNote.new(
  id: 114,
  body: 'body0',
  subscription_id: 224,
  created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  updated_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

