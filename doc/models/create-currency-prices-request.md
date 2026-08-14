
# Create Currency Prices Request

## Structure

`CreateCurrencyPricesRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency_prices` | [`Array[CreateCurrencyPrice]`](../../doc/models/create-currency-price.md) | Required | - |

## Example

```ruby
create_currency_prices_request = CreateCurrencyPricesRequest.new(
  currency_prices: [
    CreateCurrencyPrice.new(
      currency: 'currency8',
      price: 233.74,
      price_id: 116
    )
  ]
)
```

