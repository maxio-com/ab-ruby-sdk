
# Create Product Currency Price

## Structure

`CreateProductCurrencyPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency` | `String` | Required | ISO code for one of the site level currencies. |
| `price` | `Integer` | Required | Price for the given role. |
| `role` | [`CurrencyPriceRole`](../../doc/models/currency-price-role.md) | Required | Role for the price. |

## Example

```ruby
create_product_currency_price = CreateProductCurrencyPrice.new(
  currency: 'currency6',
  price: 34,
  role: CurrencyPriceRole::BASELINE
)
```

