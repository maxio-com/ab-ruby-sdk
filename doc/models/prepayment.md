
# Prepayment

## Structure

`Prepayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `subscription_id` | `Integer` | Required | - |
| `amount_in_cents` | `Integer` | Required | - |
| `remaining_amount_in_cents` | `Integer` | Required | - |
| `refunded_amount_in_cents` | `Integer` | Optional | - |
| `details` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `external` | `TrueClass \| FalseClass` | Required | - |
| `memo` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `payment_type` | [`PrepaymentMethod`](../../doc/models/prepayment-method.md) | Optional | The payment type of the prepayment. |
| `created_at` | `DateTime` | Required | - |

## Example (as JSON)

```json
{
  "id": 50,
  "subscription_id": 160,
  "amount_in_cents": 120,
  "remaining_amount_in_cents": 194,
  "refunded_amount_in_cents": 144,
  "details": "details4",
  "external": false,
  "memo": "memo8",
  "payment_type": "cash",
  "created_at": "2016-03-13T12:52:32.123Z"
}
```

