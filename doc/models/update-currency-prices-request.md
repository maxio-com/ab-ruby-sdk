
# Update Currency Prices Request

## Structure

`UpdateCurrencyPricesRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency_prices` | [`Array[UpdateCurrencyPrice]`](../../doc/models/update-currency-price.md) | Required | - |

## Example

```ruby
update_currency_prices_request = UpdateCurrencyPricesRequest.new(
  currency_prices: [
    UpdateCurrencyPrice.new(
      id: 50,
      price: 233.74
    )
  ]
)
```

