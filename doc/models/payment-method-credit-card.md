
# Payment Method Credit Card

## Structure

`PaymentMethodCreditCard`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_brand` | `String` | Required | - |
| `card_expiration` | `String` | Optional | - |
| `last_four` | `String` | Optional | - |
| `masked_card_number` | `String` | Required | - |
| `type` | [`InvoiceEventPaymentMethod`](../../doc/models/invoice-event-payment-method.md) | Required | - |

## Example (as JSON)

```json
{
  "card_brand": "card_brand4",
  "masked_card_number": "masked_card_number0",
  "type": "credit_card",
  "card_expiration": "card_expiration2",
  "last_four": "last_four4"
}
```

