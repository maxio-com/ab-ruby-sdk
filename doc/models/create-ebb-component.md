
# Create EBB Component

## Structure

`CreateEBBComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `event_based_component` | [`EBBComponent`](../../doc/models/ebb-component.md) | Required | - |

## Example (as JSON)

```json
{
  "event_based_component": {
    "name": "name8",
    "unit_name": "unit_name0",
    "description": "description8",
    "handle": "handle4",
    "taxable": false,
    "pricing_scheme": "stairstep",
    "prices": [
      {
        "starting_quantity": 242,
        "ending_quantity": 40,
        "unit_price": 23.26
      }
    ],
    "upgrade_charge": "full",
    "downgrade_credit": "full",
    "price_points": [
      {
        "name": "name2",
        "handle": "handle8",
        "pricing_scheme": "per_unit",
        "interval": 92,
        "interval_unit": "day",
        "prices": [
          {
            "starting_quantity": 242,
            "ending_quantity": 40,
            "unit_price": 23.26
          }
        ]
      }
    ],
    "unit_price": "String7",
    "tax_code": "tax_code6",
    "hide_date_range_on_invoice": false,
    "price_in_cents": "price_in_cents2",
    "event_based_billing_metric_id": 68,
    "interval": 182,
    "interval_unit": "day"
  }
}
```

