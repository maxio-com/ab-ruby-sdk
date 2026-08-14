
# Dunner Data

## Structure

`DunnerData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `state` | `String` | Required | - |
| `subscription_id` | `Integer` | Required | - |
| `revenue_at_risk_in_cents` | `Integer` | Required | - |
| `created_at` | `DateTime` | Required | - |
| `attempts` | `Integer` | Required | - |
| `last_attempted_at` | `DateTime` | Required | - |

## Example

```ruby
dunner_data = DunnerData.new(
  state: 'state2',
  subscription_id: 216,
  revenue_at_risk_in_cents: 120,
  created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  attempts: 20,
  last_attempted_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

