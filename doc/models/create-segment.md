
# Create Segment

## Structure

`CreateSegment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `segment_property_1_value` | String \| Float \| Integer \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |
| `segment_property_2_value` | String \| Float \| Integer \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |
| `segment_property_3_value` | String \| Float \| Integer \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |
| `segment_property_4_value` | String \| Float \| Integer \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |
| `pricing_scheme` | [`PricingScheme`](../../doc/models/pricing-scheme.md) | Required | The identifier for the pricing scheme. See [Product Components](https://help.chargify.com/products/product-components.html) for an overview of pricing schemes. |
| `prices` | [`Array[CreateOrUpdateSegmentPrice]`](../../doc/models/create-or-update-segment-price.md) | Optional | - |

## Example

```ruby
create_segment = CreateSegment.new(
  pricing_scheme: PricingScheme::STAIRSTEP,
  segment_property_1_value: 'String3',
  segment_property_2_value: 'String5',
  segment_property_3_value: 'String3',
  segment_property_4_value: 'String7',
  prices: [
    CreateOrUpdateSegmentPrice.new(
      unit_price: 'String3',
      starting_quantity: 64,
      ending_quantity: 38
    ),
    CreateOrUpdateSegmentPrice.new(
      unit_price: 'String3',
      starting_quantity: 64,
      ending_quantity: 38
    ),
    CreateOrUpdateSegmentPrice.new(
      unit_price: 'String3',
      starting_quantity: 64,
      ending_quantity: 38
    )
  ]
)
```

