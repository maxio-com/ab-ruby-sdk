
# Create Currency Price

## Structure

`CreateCurrencyPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency` | `String` | Optional | ISO code for a currency defined on the site level |
| `price` | `Float` | Optional | Price for the price level in this currency |
| `price_id` | `Integer` | Optional | ID of the price that this corresponds with |

## Example

```ruby
create_currency_price = CreateCurrencyPrice.new(
  currency: 'currency8',
  price: 24.44,
  price_id: 178
)
```

