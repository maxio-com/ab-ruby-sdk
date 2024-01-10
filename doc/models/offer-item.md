
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
| `interval` | `Integer` | Optional | The numerical interval. i.e. an interval of '30' coupled with an interval_unit of day would mean this component price point would renew every 30 days. This property is only available for sites with Multifrequency enabled. |
| `interval_unit` | [`IntervalUnit`](../../doc/models/interval-unit.md) | Optional | A string representing the interval unit for this component price point, either month or day. This property is only available for sites with Multifrequency enabled. |

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

