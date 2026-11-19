
# Component Currency Price

## Structure

`ComponentCurrencyPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The ID of the stored currency price. This is `null` when the price point uses the site exchange rate (`use_site_exchange_rate: true`), because the price is calculated from the rate and is not stored. |
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

