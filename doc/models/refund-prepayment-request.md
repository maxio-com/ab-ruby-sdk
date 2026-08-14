
# Refund Prepayment Request

## Structure

`RefundPrepaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `refund` | [`RefundPrepayment`](../../doc/models/refund-prepayment.md) | Required | - |

## Example

```ruby
refund_prepayment_request = RefundPrepaymentRequest.new(
  refund: RefundPrepayment.new(
    amount_in_cents: 132,
    amount: 'String1',
    memo: 'memo2',
    external: false
  )
)
```

