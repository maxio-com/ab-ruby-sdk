
# Invoice Refund

## Structure

`InvoiceRefund`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_id` | `Integer` | Optional | - |
| `payment_id` | `Integer` | Optional | - |
| `memo` | `String` | Optional | - |
| `original_amount` | `String` | Optional | - |
| `applied_amount` | `String` | Optional | - |
| `gateway_transaction_id` | `String` | Optional | The transaction ID for the refund as returned from the payment gateway |
| `gateway_used` | `String` | Optional | - |
| `gateway_handle` | `String` | Optional | - |
| `ach_late_reject` | `TrueClass \| FalseClass` | Optional | - |

## Example

```ruby
invoice_refund = InvoiceRefund.new(
  transaction_id: 0,
  payment_id: 126,
  memo: 'memo0',
  original_amount: 'original_amount0',
  applied_amount: 'applied_amount2'
)
```

