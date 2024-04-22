
# Component Response

## Structure

`ComponentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component` | [`Component`](../../doc/models/component.md) | Required | - |

## Example (as JSON)

```json
{
  "component": {
    "item_category": "Business Software",
    "id": 80,
    "name": "name8",
    "handle": "handle4",
    "pricing_scheme": "per_unit",
    "unit_name": "unit_name0",
    "unit_price": "unit_price6",
    "product_family_id": 172,
    "product_family_name": "product_family_name2",
    "price_per_unit_in_cents": 226,
    "kind": "quantity_based_component",
    "archived": false,
    "taxable": false,
    "description": "description2",
    "default_price_point_id": 248,
    "overage_prices": [
      {
        "id": 8,
        "component_id": 118,
        "starting_quantity": 74,
        "ending_quantity": 48,
        "unit_price": "unit_price8",
        "price_point_id": 114,
        "formatted_unit_price": "formatted_unit_price0",
        "segment_id": 236
      },
      {
        "id": 8,
        "component_id": 118,
        "starting_quantity": 74,
        "ending_quantity": 48,
        "unit_price": "unit_price8",
        "price_point_id": 114,
        "formatted_unit_price": "formatted_unit_price0",
        "segment_id": 236
      }
    ],
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
      }
    ],
    "price_point_count": 152,
    "price_points_url": "price_points_url0",
    "default_price_point_name": "default_price_point_name2",
    "tax_code": "tax_code6",
    "recurring": false,
    "upgrade_charge": "prorated",
    "downgrade_credit": "none",
    "created_at": "2016-03-13T12:52:32.123Z",
    "updated_at": "2016-03-13T12:52:32.123Z",
    "archived_at": "2016-03-13T12:52:32.123Z",
    "hide_date_range_on_invoice": false,
    "allow_fractional_quantities": false,
    "use_site_exchange_rate": false,
    "accounting_code": "accounting_code4",
    "event_based_billing_metric_id": 18,
    "interval": 124,
    "interval_unit": "day"
  }
}
```

