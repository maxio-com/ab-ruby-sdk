
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

## Example (as JSON)

```json
{
  "transaction_id": 172,
  "payment_id": 42,
  "memo": "memo6",
  "original_amount": "original_amount6",
  "applied_amount": "applied_amount6"
}
```

