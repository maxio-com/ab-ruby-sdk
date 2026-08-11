
# Available Actions

## Structure

`AvailableActions`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `send_email` | [`SendEmail`](../../doc/models/send-email.md) | Optional | - |

## Example

```ruby
available_actions = AvailableActions.new(
  send_email: SendEmail.new(
    can_execute: false,
    url: 'url0'
  )
)
```

