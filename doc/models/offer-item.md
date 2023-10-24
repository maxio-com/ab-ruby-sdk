
# Offer Item

## Structure

`OfferItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_id` | `Integer` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |
| `starting_quantity` | `String` | Optional | - |
| `editable` | `TrueClass \| FalseClass` | Optional | - |
| `component_unit_price` | `String` | Optional | - |
| `component_name` | `String` | Optional | - |
| `price_point_name` | `String` | Optional | - |
| `currency_prices` | [`Array<CurrencyPrice>`](../../doc/models/currency-price.md) | Optional | - |

## Example (as JSON)

```json
{
  "component_id": 216,
  "price_point_id": 16,
  "starting_quantity": "starting_quantity0",
  "editable": false,
  "component_unit_price": "component_unit_price8"
}
```

