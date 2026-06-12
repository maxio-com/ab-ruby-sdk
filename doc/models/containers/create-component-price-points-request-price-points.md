
# Create Component Price Points Request Price Points

## Data Type

`CreateComponentPricePoint | CreatePrepaidUsageComponentPricePoint`

## Cases

| Type |
|  --- |
| [`CreateComponentPricePoint`](../../../doc/models/create-component-price-point.md) |
| [`CreatePrepaidUsageComponentPricePoint`](../../../doc/models/create-prepaid-usage-component-price-point.md) |

## CreateComponentPricePoint

### Initialization Code

#### Example

```ruby
value = CreateComponentPricePoint.new(
  name: 'name0',
  pricing_scheme: PricingScheme::PER_UNIT,
  prices: [
    Price.new(
      starting_quantity: 242,
      unit_price: 23.26
    )
  ],
  use_site_exchange_rate: true
)
```

## CreatePrepaidUsageComponentPricePoint

### Initialization Code

#### Example

```ruby
value = CreatePrepaidUsageComponentPricePoint.new(
  name: 'name0',
  pricing_scheme: PricingScheme::PER_UNIT,
  prices: [
    Price.new(
      starting_quantity: 242,
      unit_price: 23.26
    )
  ],
  overage_pricing: OveragePricing.new(
    pricing_scheme: PricingScheme::STAIRSTEP
  ),
  use_site_exchange_rate: true
)
```

