
# Prepayments Response

## Structure

`PrepaymentsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `prepayments` | [`Array[Prepayment]`](../../doc/models/prepayment.md) | Optional | **Constraints**: *Unique Items Required* |

## Example

```ruby
prepayments_response = PrepaymentsResponse.new(
  prepayments: [
    Prepayment.new(
      id: 76,
      subscription_id: 186,
      amount_in_cents: 94,
      remaining_amount_in_cents: 220,
      external: false,
      memo: 'memo0',
      created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      refunded_amount_in_cents: 170,
      details: 'details6',
      payment_type: PrepaymentMethod::CASH
    ),
    Prepayment.new(
      id: 76,
      subscription_id: 186,
      amount_in_cents: 94,
      remaining_amount_in_cents: 220,
      external: false,
      memo: 'memo0',
      created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      refunded_amount_in_cents: 170,
      details: 'details6',
      payment_type: PrepaymentMethod::CASH
    ),
    Prepayment.new(
      id: 76,
      subscription_id: 186,
      amount_in_cents: 94,
      remaining_amount_in_cents: 220,
      external: false,
      memo: 'memo0',
      created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      refunded_amount_in_cents: 170,
      details: 'details6',
      payment_type: PrepaymentMethod::CASH
    )
  ]
)
```

