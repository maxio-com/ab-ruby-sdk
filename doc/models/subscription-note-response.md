
# Subscription Note Response

## Structure

`SubscriptionNoteResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `note` | [`SubscriptionNote`](../../doc/models/subscription-note.md) | Required | - |

## Example

```ruby
subscription_note_response = SubscriptionNoteResponse.new(
  note: SubscriptionNote.new(
    id: 28,
    body: 'body0',
    subscription_id: 138,
    created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    updated_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  )
)
```

