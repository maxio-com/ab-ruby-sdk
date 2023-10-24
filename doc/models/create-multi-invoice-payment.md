
# Create Multi Invoice Payment

## Structure

`CreateMultiInvoicePayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `memo` | `String` | Optional | A description to be attached to the payment. |
| `details` | `String` | Optional | Additional information related to the payment method (eg. Check #). |
| `method` | [`InvoicePaymentMethodType`](../../doc/models/invoice-payment-method-type.md) | Optional | The type of payment method used.<br>**Default**: `InvoicePaymentMethodType::OTHER` |
| `amount` | String \| Float | Required | This is a container for one-of cases. |
| `received_on` | `String` | Optional | Date reflecting when the payment was received from a customer. Must be in the past. |
| `applications` | [`Array<CreateInvoicePaymentApplication>`](../../doc/models/create-invoice-payment-application.md) | Required | - |

## Example (as JSON)

```json
{
  "method": "other",
  "amount": "String7",
  "applications": [
    {
      "invoice_uid": "invoice_uid8",
      "amount": "amount0"
    }
  ],
  "memo": "memo8",
  "details": "details4",
  "received_on": "received_on6"
}
```

