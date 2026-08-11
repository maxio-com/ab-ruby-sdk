
# Create or Update Endpoint

Used to Create or Update Endpoint.

## Structure

`CreateOrUpdateEndpoint`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `url` | `String` | Required | - |
| `webhook_subscriptions` | [`Array[WebhookSubscription]`](../../doc/models/webhook-subscription.md) | Required | - |

## Example

```ruby
create_or_update_endpoint = CreateOrUpdateEndpoint.new(
  url: 'url2',
  webhook_subscriptions: [
    WebhookSubscription::EXPIRATION_DATE_CHANGE
  ]
)
```

