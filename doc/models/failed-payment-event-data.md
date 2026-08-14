
# Failed Payment Event Data

Example schema for an `failed_payment` event

## Structure

`FailedPaymentEventData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount_in_cents` | `Integer` | Required | The monetary value of the payment, expressed in cents. |
| `applied_amount` | `Integer` | Required | The monetary value of the payment, expressed in dollars. |
| `memo` | `String` | Optional | The memo passed when the payment was created. |
| `payment_method` | [`InvoicePaymentMethodType`](../../doc/models/invoice-payment-method-type.md) | Required | - |
| `transaction_id` | `Integer` | Required | The transaction ID of the failed payment. |

## Example

```ruby
failed_payment_event_data = FailedPaymentEventData.new(
  amount_in_cents: 46,
  applied_amount: 20,
  payment_method: InvoicePaymentMethodType::CASH,
  transaction_id: 252,
  memo: 'memo2'
)
```

