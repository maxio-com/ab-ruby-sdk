
# Enable Webhooks Request

## Structure

`EnableWebhooksRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `webhooks_enabled` | `TrueClass \| FalseClass` | Required | - |

## Example

```ruby
enable_webhooks_request = EnableWebhooksRequest.new(
  webhooks_enabled: false
)
```

