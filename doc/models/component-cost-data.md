
# Component Cost Data

## Structure

`ComponentCostData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_code_id` | `Integer` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |
| `product_id` | `Integer` | Optional | - |
| `quantity` | `String` | Optional | - |
| `amount` | `String` | Optional | - |
| `pricing_scheme` | [Pricing Scheme](../../doc/models/pricing-scheme.md) \| nil | Optional | This is a container for one-of cases. |
| `tiers` | [`Array<ComponentCostDataRateTier>`](../../doc/models/component-cost-data-rate-tier.md) | Optional | - |

## Example (as JSON)

```json
{
  "component_code_id": 16,
  "price_point_id": 186,
  "product_id": 250,
  "quantity": "quantity8",
  "amount": "amount4"
}
```

