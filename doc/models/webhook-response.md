
# Webhook Response

## Structure

`WebhookResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `webhook` | [`Webhook`](../../doc/models/webhook.md) | Optional | - |

## Example

```ruby
webhook_response = WebhookResponse.new(
  webhook: Webhook.new(
    event: 'event2',
    id: 18,
    created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    last_error: 'last_error4',
    last_error_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  )
)
```

