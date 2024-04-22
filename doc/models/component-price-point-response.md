
# Component Price Point Response

## Structure

`ComponentPricePointResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | [`ComponentPricePoint`](../../doc/models/component-price-point.md) | Required | - |

## Example (as JSON)

```json
{
  "price_point": {
    "id": 248,
    "type": "default",
    "default": false,
    "name": "name0",
    "pricing_scheme": "per_unit",
    "component_id": 102,
    "handle": "handle6",
    "archived_at": "2016-03-13T12:52:32.123Z",
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
    ],
    "use_site_exchange_rate": false,
    "subscription_id": 102,
    "tax_included": false,
    "interval": 44,
    "interval_unit": "day",
    "currency_prices": [
      {
        "id": 50,
        "currency": "currency8",
        "price": "price4",
        "formatted_price": "formatted_price6",
        "price_id": 116,
        "price_point_id": 72
      },
      {
        "id": 50,
        "currency": "currency8",
        "price": "price4",
        "formatted_price": "formatted_price6",
        "price_id": 116,
        "price_point_id": 72
      },
      {
        "id": 50,
        "currency": "currency8",
        "price": "price4",
        "formatted_price": "formatted_price6",
        "price_id": 116,
        "price_point_id": 72
      }
    ]
  }
}
```

