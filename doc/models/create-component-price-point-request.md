
# Create Component Price Point Request

## Structure

`CreateComponentPricePointRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | [Create Component Price Point](../../doc/models/create-component-price-point.md) \| [Create Prepaid Usage Component Price Point](../../doc/models/create-prepaid-usage-component-price-point.md) | Required | This is a container for any-of cases. |

## Example

```ruby
create_component_price_point_request = CreateComponentPricePointRequest.new(
  price_point: CreateComponentPricePoint.new(
    name: 'name0',
    pricing_scheme: PricingScheme::PER_UNIT,
    prices: [
      Price.new(
        starting_quantity: 242,
        unit_price: 23.26,
        ending_quantity: 40
      )
    ],
    handle: 'handle6',
    secondary_pricing: SecondaryPricing.new(
      pricing_scheme: PricingScheme::STAIRSTEP,
      prices: [
        Price.new(
          starting_quantity: 242,
          unit_price: 23.26,
          ending_quantity: 40
        ),
        Price.new(
          starting_quantity: 242,
          unit_price: 23.26,
          ending_quantity: 40
        )
      ]
    ),
    secondary_pricing_scheme: PricingScheme::STAIRSTEP,
    use_site_exchange_rate: true,
    tax_included: false
  )
)
```

