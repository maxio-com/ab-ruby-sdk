
# Create Payment

## Structure

`CreatePayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `String` | Required | - |
| `memo` | `String` | Required | - |
| `payment_details` | `String` | Required | - |
| `payment_method` | [`InvoicePaymentMethodType`](../../doc/models/invoice-payment-method-type.md) | Required | The type of payment method used. Defaults to other. |

## Example (as JSON)

```json
{
  "amount": "amount6",
  "memo": "memo8",
  "payment_details": "payment_details4",
  "payment_method": "cash"
}
```

