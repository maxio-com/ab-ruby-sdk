
# Dunning Step Reached

## Structure

`DunningStepReached`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dunner` | [`DunnerData`](../../doc/models/dunner-data.md) | Required | - |
| `current_step` | [`DunningStepData`](../../doc/models/dunning-step-data.md) | Required | - |
| `next_step` | [`DunningStepData`](../../doc/models/dunning-step-data.md) | Required | - |

## Example

```ruby
dunning_step_reached = DunningStepReached.new(
  dunner: DunnerData.new(
    state: 'state8',
    subscription_id: 194,
    revenue_at_risk_in_cents: 98,
    created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    attempts: 42,
    last_attempted_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  ),
  current_step: DunningStepData.new(
    day_threshold: 198,
    action: 'action4',
    send_email: false,
    send_bcc_email: false,
    send_sms: false,
    email_body: 'email_body4',
    email_subject: 'email_subject6',
    sms_body: 'sms_body0'
  ),
  next_step: DunningStepData.new(
    day_threshold: 30,
    action: 'action4',
    send_email: false,
    send_bcc_email: false,
    send_sms: false,
    email_body: 'email_body4',
    email_subject: 'email_subject4',
    sms_body: 'sms_body0'
  )
)
```

