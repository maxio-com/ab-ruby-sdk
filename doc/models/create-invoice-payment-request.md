
# Create Invoice Payment Request

## Structure

`CreateInvoicePaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment` | [`CreateInvoicePayment`](../../doc/models/create-invoice-payment.md) | Required | - |
| `type` | [`InvoicePaymentType`](../../doc/models/invoice-payment-type.md) | Optional | The type of payment to be applied to an Invoice.<br>**Default**: `InvoicePaymentType::EXTERNAL` |

## Example (as JSON)

```json
{
  "payment": {
    "method": "other",
    "amount": "String9",
    "memo": "memo0",
    "details": "details6"
  },
  "type": "external"
}
```

