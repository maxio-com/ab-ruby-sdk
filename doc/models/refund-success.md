
# Refund Success

## Structure

`RefundSuccess`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `refund_id` | `Integer` | Required | - |
| `gateway_transaction_id` | `Integer` | Required | - |
| `product_id` | `Integer` | Required | - |

## Example

```ruby
refund_success = RefundSuccess.new(
  refund_id: 194,
  gateway_transaction_id: 0,
  product_id: 162
)
```

