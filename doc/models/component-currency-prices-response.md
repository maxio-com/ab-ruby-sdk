
# Component Currency Prices Response

## Structure

`ComponentCurrencyPricesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency_prices` | [`Array[ComponentCurrencyPrice]`](../../doc/models/component-currency-price.md) | Required | - |

## Example

```ruby
component_currency_prices_response = ComponentCurrencyPricesResponse.new(
  currency_prices: [
    ComponentCurrencyPrice.new(
      id: 50,
      currency: 'currency8',
      price: 'price4',
      formatted_price: 'formatted_price6',
      price_id: 116
    )
  ]
)
```

