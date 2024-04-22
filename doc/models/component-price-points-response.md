
# Component Price Points Response

## Structure

`ComponentPricePointsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_points` | [`Array<ComponentPricePoint>`](../../doc/models/component-price-point.md) | Optional | - |
| `meta` | [`ListPublicKeysMeta`](../../doc/models/list-public-keys-meta.md) | Optional | - |

## Example (as JSON)

```json
{
  "price_points": [
    {
      "id": 40,
      "type": "default",
      "default": false,
      "name": "name2",
      "pricing_scheme": "per_unit",
      "component_id": 150,
      "handle": "handle8",
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
        }
      ],
      "use_site_exchange_rate": false,
      "subscription_id": 150,
      "tax_included": false,
      "interval": 92,
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
        }
      ]
    },
    {
      "id": 40,
      "type": "default",
      "default": false,
      "name": "name2",
      "pricing_scheme": "per_unit",
      "component_id": 150,
      "handle": "handle8",
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
        }
      ],
      "use_site_exchange_rate": false,
      "subscription_id": 150,
      "tax_included": false,
      "interval": 92,
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
        }
      ]
    }
  ],
  "meta": {
    "total_count": 150,
    "current_page": 126,
    "total_pages": 138,
    "per_page": 152
  }
}
```

