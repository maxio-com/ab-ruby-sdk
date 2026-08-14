
# Currency Prices Response

## Structure

`CurrencyPricesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency_prices` | [`Array[CurrencyPrice]`](../../doc/models/currency-price.md) | Required | - |

## Example

```ruby
currency_prices_response = CurrencyPricesResponse.new(
  currency_prices: [
    CurrencyPrice.new(
      id: 50,
      currency: 'currency8',
      price: 233.74,
      formatted_price: 'formatted_price6',
      price_id: 116
    )
  ]
)
```

