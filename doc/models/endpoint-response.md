
# Endpoint Response

## Structure

`EndpointResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `endpoint` | [`Endpoint`](../../doc/models/endpoint.md) | Optional | - |

## Example

```ruby
endpoint_response = EndpointResponse.new(
  endpoint: Endpoint.new(
    id: 202,
    url: 'url2',
    site_id: 128,
    status: 'status0',
    webhook_subscriptions: [
      'webhook_subscriptions4'
    ]
  )
)
```

