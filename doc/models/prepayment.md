
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

## Example

```ruby
prepayment = Prepayment.new(
  id: 38,
  subscription_id: 148,
  amount_in_cents: 124,
  remaining_amount_in_cents: 182,
  external: false,
  memo: 'memo2',
  created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  refunded_amount_in_cents: 132,
  details: 'details8',
  payment_type: PrepaymentMethod::CREDIT_CARD
)
```

