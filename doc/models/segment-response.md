
# Segment Response

## Structure

`SegmentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `segment` | [`Segment`](../../doc/models/segment.md) | Optional | - |

## Example (as JSON)

```json
{
  "segment": {
    "id": 118,
    "component_id": 228,
    "price_point_id": 4,
    "event_based_billing_metric_id": 56,
    "pricing_scheme": "stairstep",
    "segment_property_1_value": "String1",
    "segment_property_2_value": "String3",
    "segment_property_3_value": "String1",
    "segment_property_4_value": "String5",
    "created_at": "2016-03-13T12:52:32.123Z",
    "updated_at": "2016-03-13T12:52:32.123Z",
    "prices": [
      {
        "id": 18,
        "component_id": 128,
        "starting_quantity": 64,
        "ending_quantity": 38,
        "unit_price": "unit_price2",
        "price_point_id": 104,
        "formatted_unit_price": "formatted_unit_price4",
        "segment_id": 226
      },
      {
        "id": 18,
        "component_id": 128,
        "starting_quantity": 64,
        "ending_quantity": 38,
        "unit_price": "unit_price2",
        "price_point_id": 104,
        "formatted_unit_price": "formatted_unit_price4",
        "segment_id": 226
      },
      {
        "id": 18,
        "component_id": 128,
        "starting_quantity": 64,
        "ending_quantity": 38,
        "unit_price": "unit_price2",
        "price_point_id": 104,
        "formatted_unit_price": "formatted_unit_price4",
        "segment_id": 226
      }
    ]
  }
}
```

