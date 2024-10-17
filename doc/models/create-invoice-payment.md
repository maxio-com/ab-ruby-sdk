
# Create Invoice Payment

## Structure

`CreateInvoicePayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | String \| Float \| nil | Optional | This is a container for one-of cases. |
| `memo` | `String` | Optional | A description to be attached to the payment. Applicable only to `external` payments. |
| `method` | [`InvoicePaymentMethodType`](../../doc/models/invoice-payment-method-type.md) | Optional | The type of payment method used. Defaults to other. |
| `details` | `String` | Optional | Additional information related to the payment method (eg. Check #). Applicable only to `external` payments. |
| `payment_profile_id` | `Integer` | Optional | The ID of the payment profile to be used for the payment. |
| `received_on` | `Date` | Optional | Date reflecting when the payment was received from a customer. Must be in the past. Applicable only to<br>`external` payments. |

## Example (as JSON)

```json
{
  "amount": "String9",
  "memo": "memo0",
  "method": "cash",
  "details": "details6",
  "payment_profile_id": 122
}
```

