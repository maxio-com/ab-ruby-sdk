
# Payment Method Credit Card Type

## Structure

`PaymentMethodCreditCardType`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_brand` | `String` | Optional | - |
| `card_expiration` | `String` | Optional | - |
| `last_four` | `String` | Optional | - |
| `masked_card_number` | `String` | Optional | - |
| `type` | `String` | Optional | **Default**: `'credit_card'` |

## Example (as JSON)

```json
{
  "type": "credit_card",
  "card_brand": "card_brand0",
  "card_expiration": "card_expiration8",
  "last_four": "last_four0",
  "masked_card_number": "masked_card_number4"
}
```

