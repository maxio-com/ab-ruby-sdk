
# Send Email

## Structure

`SendEmail`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `can_execute` | `TrueClass \| FalseClass` | Required | - |
| `url` | `String` | Required | - |

## Example

```ruby
send_email = SendEmail.new(
  can_execute: false,
  url: 'url0'
)
```

