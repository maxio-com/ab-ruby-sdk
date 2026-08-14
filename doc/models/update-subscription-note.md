
# Update Subscription Note

Updatable fields for Subscription Note

## Structure

`UpdateSubscriptionNote`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | `String` | Required | - |
| `sticky` | `TrueClass \| FalseClass` | Required | - |

## Example

```ruby
update_subscription_note = UpdateSubscriptionNote.new(
  body: 'body8',
  sticky: false
)
```

