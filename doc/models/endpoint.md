
# Endpoint

## Structure

`Endpoint`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `url` | `String` | Optional | - |
| `site_id` | `Integer` | Optional | - |
| `status` | `String` | Optional | - |
| `webhook_subscriptions` | `Array[String]` | Optional | - |

## Example

```ruby
endpoint = Endpoint.new(
  id: 202,
  url: 'url2',
  site_id: 128,
  status: 'status0',
  webhook_subscriptions: [
    'webhook_subscriptions4'
  ]
)
```

