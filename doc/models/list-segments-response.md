
# List Segments Response

## Structure

`ListSegmentsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `segments` | [`Array<Segment>`](../../doc/models/segment.md) | Optional | - |

## Example (as JSON)

```json
{
  "segments": [
    {
      "id": 50,
      "component_id": 160,
      "price_point_id": 184,
      "event_based_billing_metric_id": 244,
      "pricing_scheme": "stairstep",
      "segment_property_1_value": "String3",
      "segment_property_2_value": "String5",
      "segment_property_3_value": "String3",
      "segment_property_4_value": "String7",
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
  ]
}
```

