
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

## Example (as JSON)

```json
{
  "state": "state4",
  "subscription_id": 126,
  "revenue_at_risk_in_cents": 30,
  "created_at": "2016-03-13T12:52:32.123Z",
  "attempts": 110,
  "last_attempted_at": "2016-03-13T12:52:32.123Z"
}
```

