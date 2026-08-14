
# Dunning Step Data

## Structure

`DunningStepData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `day_threshold` | `Integer` | Required | - |
| `action` | `String` | Required | - |
| `email_body` | `String` | Optional | - |
| `email_subject` | `String` | Optional | - |
| `send_email` | `TrueClass \| FalseClass` | Required | - |
| `send_bcc_email` | `TrueClass \| FalseClass` | Required | - |
| `send_sms` | `TrueClass \| FalseClass` | Required | - |
| `sms_body` | `String` | Optional | - |

## Example

```ruby
dunning_step_data = DunningStepData.new(
  day_threshold: 90,
  action: 'action0',
  send_email: false,
  send_bcc_email: false,
  send_sms: false,
  email_body: 'email_body0',
  email_subject: 'email_subject0',
  sms_body: 'sms_body4'
)
```

