
# Component Price Point Currency Overage Response

## Structure

`ComponentPricePointCurrencyOverageResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | [`CurrencyOveragePrices`](../../doc/models/currency-overage-prices.md) | Required | Extends a component price point with currency overage prices. |

## Example

```ruby
component_price_point_currency_overage_response = ComponentPricePointCurrencyOverageResponse.new(
  price_point: CurrencyOveragePrices.new(
    id: 248,
    type: PricePointType::DEFAULT,
    default: false,
    name: 'name0',
    pricing_scheme: PricingScheme::PER_UNIT
  )
)
```

