
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

## Example (as JSON)

```json
{
  "day_threshold": 88,
  "action": "action4",
  "email_body": "email_body4",
  "email_subject": "email_subject4",
  "send_email": false,
  "send_bcc_email": false,
  "send_sms": false,
  "sms_body": "sms_body0"
}
```

