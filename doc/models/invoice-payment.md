
# Invoice Payment

## Structure

`InvoicePayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_time` | `DateTime` | Optional | - |
| `memo` | `String` | Optional | - |
| `original_amount` | `String` | Optional | - |
| `applied_amount` | `String` | Optional | - |
| `payment_method` | [`InvoicePaymentMethod`](../../doc/models/invoice-payment-method.md) | Optional | - |
| `transaction_id` | `Integer` | Optional | - |
| `prepayment` | `TrueClass \| FalseClass` | Optional | - |
| `gateway_handle` | `String` | Optional | - |
| `gateway_used` | `String` | Optional | - |
| `gateway_transaction_id` | `String` | Optional | The transaction ID for the payment as returned from the payment gateway |
| `received_on` | `Date` | Optional | Date reflecting when the payment was received from a customer. Must be in the past. Applicable only to<br>`external` payments. |
| `uid` | `String` | Optional | - |

## Example

```ruby
invoice_payment = InvoicePayment.new(
  transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  memo: 'memo4',
  original_amount: 'original_amount4',
  applied_amount: 'applied_amount8',
  payment_method: InvoicePaymentMethod.new(
    details: 'details0',
    kind: 'kind8',
    memo: 'memo4',
    type: 'type0',
    card_brand: 'card_brand6'
  )
)
```

