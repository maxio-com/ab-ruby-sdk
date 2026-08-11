
# Refund Prepayment Base Refund Error

## Structure

`RefundPrepaymentBaseRefundError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `refund` | [`BaseRefundError`](../../doc/models/base-refund-error.md) | Optional | - |

## Example

```ruby
refund_prepayment_base_refund_error = RefundPrepaymentBaseRefundError.new(
  refund: BaseRefundError.new(
    base: [
      { 'key1' => 'val1', 'key2' => 'val2' }
    ]
  )
)
```

