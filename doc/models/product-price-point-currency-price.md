
# Product Price Point Currency Price

object Product Price Point Currency Price:

## Structure

`ProductPricePointCurrencyPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `currency` | `String` | Optional | - |
| `price` | `Integer` | Optional | - |
| `formatted_price` | `String` | Optional | - |
| `product_price_point_id` | `Integer` | Optional | - |
| `role` | [`CurrencyPriceRole`](../../doc/models/currency-price-role.md) | Optional | Role for the price. |

## Example (as JSON)

```json
{
  "id": 254,
  "currency": "currency2",
  "price": 130,
  "formatted_price": "formatted_price0",
  "product_price_point_id": 120
}
```

