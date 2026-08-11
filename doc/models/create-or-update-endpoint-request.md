
# Create or Update Endpoint Request

Used to Create or Update Endpoint.

## Structure

`CreateOrUpdateEndpointRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `endpoint` | [`CreateOrUpdateEndpoint`](../../doc/models/create-or-update-endpoint.md) | Required | Used to Create or Update Endpoint. |

## Example

```ruby
create_or_update_endpoint_request = CreateOrUpdateEndpointRequest.new(
  endpoint: CreateOrUpdateEndpoint.new(
    url: 'url2',
    webhook_subscriptions: [
      WebhookSubscription::STATEMENT_CLOSED
    ]
  )
)
```

