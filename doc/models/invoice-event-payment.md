
# Invoice Event Payment

A nested data structure detailing the method of payment

## Structure

`InvoiceEventPayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Optional | - |
| `masked_account_number` | `String` | Optional | - |
| `masked_routing_number` | `String` | Optional | - |
| `card_brand` | `String` | Optional | - |
| `card_expiration` | `String` | Optional | - |
| `last_four` | `String` | Optional | - |
| `masked_card_number` | `String` | Optional | - |
| `details` | `String` | Optional | - |
| `kind` | `String` | Optional | - |
| `memo` | `String` | Optional | - |
| `email` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "type": "Invoice Event Payment",
  "masked_account_number": "masked_account_number8",
  "masked_routing_number": "masked_routing_number8",
  "card_brand": "card_brand4",
  "card_expiration": "card_expiration2"
}
```

