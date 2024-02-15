
# List Subcription Group Prepayment Item

## Structure

`ListSubcriptionGroupPrepaymentItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `subscription_group_uid` | `String` | Optional | - |
| `amount_in_cents` | `Integer` | Optional | - |
| `remaining_amount_in_cents` | `Integer` | Optional | - |
| `details` | `String` | Optional | - |
| `external` | `TrueClass \| FalseClass` | Optional | - |
| `memo` | `String` | Optional | - |
| `payment_type` | [`PrepaymentMethod`](../../doc/models/prepayment-method.md) | Optional | - |
| `created_at` | `DateTime` | Optional | - |

## Example (as JSON)

```json
{
  "id": 254,
  "subscription_group_uid": "subscription_group_uid6",
  "amount_in_cents": 172,
  "remaining_amount_in_cents": 142,
  "details": "details2"
}
```

