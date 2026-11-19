
# Segment

## Structure

`Segment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `component_id` | `Integer` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |
| `event_based_billing_metric_id` | `Integer` | Optional | - |
| `pricing_scheme` | [`PricingScheme`](../../doc/models/pricing-scheme.md) | Optional | The identifier for the pricing scheme. See [Product Components](https://help.chargify.com/products/product-components.html) for an overview of pricing schemes. |
| `segment_property_1_value` | String \| Float \| Integer \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |
| `segment_property_2_value` | String \| Float \| Integer \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |
| `segment_property_3_value` | String \| Float \| Integer \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |
| `segment_property_4_value` | String \| Float \| Integer \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `prices` | [`Array[SegmentPrice]`](../../doc/models/segment-price.md) | Optional | **Constraints**: *Minimum Items*: `1` |
| `currency_prices` | [`Array[ComponentCurrencyPrice]`](../../doc/models/component-currency-price.md) | Optional | Prices of the segment in the site's non-primary currencies, one entry for each price and currency. This field is present only when the request includes `currency_prices=true`. If the price point uses the site exchange rate, the prices are calculated from the current rate and each `id` is `null`. |

## Example

```ruby
segment = Segment.new(
  id: 118,
  component_id: 228,
  price_point_id: 4,
  event_based_billing_metric_id: 56,
  pricing_scheme: PricingScheme::STAIRSTEP
)
```

