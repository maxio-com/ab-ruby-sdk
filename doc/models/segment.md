
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
| `pricing_scheme` | `String` | Optional | - |
| `segment_property_1_value` | String \| Float \| Integer \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |
| `segment_property_2_value` | String \| Float \| Integer \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |
| `segment_property_3_value` | String \| Float \| Integer \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |
| `segment_property_4_value` | String \| Float \| Integer \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |
| `created_at` | `String` | Optional | - |
| `updated_at` | `String` | Optional | - |
| `prices` | [`Array<SegmentPrice>`](../../doc/models/segment-price.md) | Optional | **Constraints**: *Minimum Items*: `1` |

## Example (as JSON)

```json
{
  "id": 6,
  "component_id": 116,
  "price_point_id": 140,
  "event_based_billing_metric_id": 200,
  "pricing_scheme": "pricing_scheme0"
}
```

