
# Create Invoice Payment

## Structure

`CreateInvoicePayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | String \| Float \| nil | Optional | This is a container for one-of cases. |
| `memo` | `String` | Optional | A description to be attached to the payment. |
| `method` | [`InvoicePaymentMethodType`](../../doc/models/invoice-payment-method-type.md) | Optional | The type of payment method used.<br>**Default**: `InvoicePaymentMethodType::OTHER` |
| `details` | `String` | Optional | Additional information related to the payment method (eg. Check #) |

## Example (as JSON)

```json
{
  "method": "other",
  "amount": "String9",
  "memo": "memo0",
  "details": "details6"
}
```

