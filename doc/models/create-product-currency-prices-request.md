
# Create Product Currency Prices Request

## Structure

`CreateProductCurrencyPricesRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency_prices` | [`Array[CreateProductCurrencyPrice]`](../../doc/models/create-product-currency-price.md) | Required | - |

## Example

```ruby
create_product_currency_prices_request = CreateProductCurrencyPricesRequest.new(
  currency_prices: [
    CreateProductCurrencyPrice.new(
      currency: 'currency8',
      price: 78,
      role: CurrencyPriceRole::INITIAL
    )
  ]
)
```

