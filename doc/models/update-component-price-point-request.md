
# Update Component Price Point Request

## Structure

`UpdateComponentPricePointRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | [`UpdateComponentPricePoint`](../../doc/models/update-component-price-point.md) | Optional | - |

## Example (as JSON)

```json
{
  "price_point": {
    "name": "name0",
    "handle": "handle6",
    "pricing_scheme": "per_unit",
    "use_site_exchange_rate": false,
    "tax_included": false,
    "interval": 44,
    "interval_unit": "day",
    "prices": [
      {
        "id": 18,
        "ending_quantity": 40,
        "unit_price": 23.26,
        "_destroy": false,
        "starting_quantity": 242
      },
      {
        "id": 18,
        "ending_quantity": 40,
        "unit_price": 23.26,
        "_destroy": false,
        "starting_quantity": 242
      },
      {
        "id": 18,
        "ending_quantity": 40,
        "unit_price": 23.26,
        "_destroy": false,
        "starting_quantity": 242
      }
    ]
  }
}
```

