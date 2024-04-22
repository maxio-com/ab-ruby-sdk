
# Create on Off Component

## Structure

`CreateOnOffComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `on_off_component` | [`OnOffComponent`](../../doc/models/on-off-component.md) | Required | - |

## Example (as JSON)

```json
{
  "on_off_component": {
    "name": "name6",
    "description": "description6",
    "handle": "handle2",
    "taxable": false,
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
    "unit_price": "String5",
    "tax_code": "tax_code4",
    "hide_date_range_on_invoice": false,
    "price_in_cents": "price_in_cents0",
    "display_on_hosted_page": false,
    "allow_fractional_quantities": false,
    "public_signup_page_ids": [
      168,
      169,
      170
    ],
    "interval": 250,
    "interval_unit": "day"
  }
}
```

