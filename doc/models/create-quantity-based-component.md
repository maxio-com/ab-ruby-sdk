
# Create Quantity Based Component

## Structure

`CreateQuantityBasedComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `quantity_based_component` | [`QuantityBasedComponent`](../../doc/models/quantity-based-component.md) | Required | - |

## Example (as JSON)

```json
{
  "quantity_based_component": {
    "name": "name0",
    "unit_name": "unit_name2",
    "description": "description0",
    "handle": "handle6",
    "taxable": false,
    "pricing_scheme": "stairstep",
    "prices": [
      {
        "starting_quantity": 242,
        "ending_quantity": 40,
        "unit_price": 23.26
      },
      {
        "starting_quantity": 242,
        "ending_quantity": 40,
        "unit_price": 23.26
      }
    ],
    "upgrade_charge": "prorated",
    "downgrade_credit": "none",
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
      },
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
      },
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
    "unit_price": "String9",
    "tax_code": "tax_code8",
    "hide_date_range_on_invoice": false,
    "price_in_cents": "price_in_cents6",
    "recurring": false,
    "display_on_hosted_page": false,
    "allow_fractional_quantities": false,
    "public_signup_page_ids": [
      196,
      197
    ],
    "interval": 234,
    "interval_unit": "day"
  }
}
```

