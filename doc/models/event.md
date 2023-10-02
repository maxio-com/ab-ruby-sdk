
# Event

## Structure

`Event`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Float` | Required | - |
| `key` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `message` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `subscription_id` | `Float` | Required | - |
| `created_at` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `event_specific_data` | [Event Data](../../doc/models/event-data.md) \| nil | Required | This is a container for one-of cases. |

## Example (as JSON)

```json
{
  "id": 159.12,
  "key": "key2",
  "message": "message8",
  "subscription_id": 185.82,
  "created_at": "created_at0",
  "event_specific_data": {
    "previous_subscription_state": "previous_subscription_state4",
    "new_subscription_state": "new_subscription_state8"
  }
}
```

