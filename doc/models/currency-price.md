
# Currency Price

## Structure

`CurrencyPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `currency` | `String` | Optional | - |
| `price` | `Float` | Optional | - |
| `formatted_price` | `String` | Optional | - |
| `price_id` | `Integer` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |
| `product_price_point_id` | `Integer` | Optional | - |
| `role` | [`CurrencyPriceRole`](../../doc/models/currency-price-role.md) | Optional | Role for the price. |

## Example (as JSON)

```json
{
  "id": 88,
  "currency": "currency6",
  "price": 41.36,
  "formatted_price": "formatted_price4",
  "price_id": 178
}
```

