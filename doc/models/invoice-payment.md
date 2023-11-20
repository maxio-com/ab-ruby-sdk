
# Invoice Payment

## Structure

`InvoicePayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_time` | `String` | Optional | - |
| `memo` | `String` | Optional | - |
| `original_amount` | `String` | Optional | - |
| `applied_amount` | `String` | Optional | - |
| `payment_method` | [`InvoicePaymentMethod`](../../doc/models/invoice-payment-method.md) | Optional | - |
| `transaction_id` | `Integer` | Optional | - |
| `prepayment` | `TrueClass \| FalseClass` | Optional | - |
| `gateway_handle` | `String` | Optional | - |
| `gateway_used` | `String` | Optional | - |
| `gateway_transaction_id` | `String` | Optional | The transaction ID for the payment as returned from the payment gateway |

## Example (as JSON)

```json
{
  "transaction_time": "transaction_time4",
  "memo": "memo6",
  "original_amount": "original_amount6",
  "applied_amount": "applied_amount6",
  "payment_method": {
    "details": "details0",
    "kind": "kind8",
    "memo": "memo4",
    "type": "type0",
    "card_brand": "card_brand6"
  }
}
```

