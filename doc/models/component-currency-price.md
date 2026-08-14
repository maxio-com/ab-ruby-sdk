
# Component Currency Price

## Structure

`ComponentCurrencyPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `currency` | `String` | Optional | - |
| `price` | `String` | Optional | - |
| `formatted_price` | `String` | Optional | - |
| `price_id` | `Integer` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |

## Example

```ruby
component_currency_price = ComponentCurrencyPrice.new(
  id: 170,
  currency: 'currency2',
  price: 'price4',
  formatted_price: 'formatted_price6',
  price_id: 252
)
```

