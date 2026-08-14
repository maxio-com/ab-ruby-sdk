
# Update Currency Price

## Structure

`UpdateCurrencyPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | ID of the currency price record being updated |
| `price` | `Float` | Required | New price for the given currency |

## Example

```ruby
update_currency_price = UpdateCurrencyPrice.new(
  id: 186,
  price: 72.26
)
```

