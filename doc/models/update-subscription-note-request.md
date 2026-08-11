
# Update Subscription Note Request

Updatable fields for Subscription Note

## Structure

`UpdateSubscriptionNoteRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `note` | [`UpdateSubscriptionNote`](../../doc/models/update-subscription-note.md) | Required | Updatable fields for Subscription Note |

## Example

```ruby
update_subscription_note_request = UpdateSubscriptionNoteRequest.new(
  note: UpdateSubscriptionNote.new(
    body: 'body0',
    sticky: false
  )
)
```

