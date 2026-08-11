
# Prepayment Response

## Structure

`PrepaymentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `prepayment` | [`Prepayment`](../../doc/models/prepayment.md) | Required | - |

## Example

```ruby
prepayment_response = PrepaymentResponse.new(
  prepayment: Prepayment.new(
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
)
```

