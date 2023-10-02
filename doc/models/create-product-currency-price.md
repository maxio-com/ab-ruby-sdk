
# Create Product Currency Price

## Structure

`CreateProductCurrencyPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency` | `String` | Required | ISO code for one of the site level currencies. |
| `price` | `Integer` | Required | Price for the given role. |
| `role` | [`CurrencyPriceRoleEnum`](../../doc/models/currency-price-role-enum.md) | Required | Role for the price. |

## Example (as JSON)

```json
{
  "currency": "currency0",
  "price": 222,
  "role": "baseline"
}
```

