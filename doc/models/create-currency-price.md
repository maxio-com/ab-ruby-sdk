
# Create Currency Price

## Structure

`CreateCurrencyPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency` | `String` | Optional | ISO code for a currency defined on the site level |
| `price` | `Float` | Optional | Price for the price level in this currency |
| `price_id` | `Integer` | Optional | ID of the price that this corresponds with |

## Example (as JSON)

```json
{
  "currency": "currency2",
  "price": 10.4,
  "price_id": 54
}
```

