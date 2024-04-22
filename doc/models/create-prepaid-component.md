
# Create Prepaid Component

## Structure

`CreatePrepaidComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `prepaid_usage_component` | [`PrepaidUsageComponent`](../../doc/models/prepaid-usage-component.md) | Required | - |

## Example (as JSON)

```json
{
  "prepaid_usage_component": {
    "name": "name2",
    "unit_name": "unit_name4",
    "description": "description2",
    "handle": "handle8",
    "taxable": false,
    "pricing_scheme": "per_unit",
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
        "prices": [
          {
            "starting_quantity": 242,
            "ending_quantity": 40,
            "unit_price": 23.26
          }
        ],
        "overage_pricing": {
          "pricing_scheme": "stairstep",
          "prices": [
            {
              "starting_quantity": 242,
              "ending_quantity": 40,
              "unit_price": 23.26
            }
          ]
        }
      }
    ],
    "unit_price": "String1",
    "tax_code": "tax_code0",
    "hide_date_range_on_invoice": false,
    "price_in_cents": "price_in_cents6",
    "overage_pricing": {
      "pricing_scheme": "stairstep",
      "prices": [
        {
          "starting_quantity": 242,
          "ending_quantity": 40,
          "unit_price": 23.26
        }
      ]
    },
    "rollover_prepaid_remainder": false,
    "renew_prepaid_allocation": false,
    "expiration_interval": 248.7,
    "expiration_interval_unit": "day",
    "display_on_hosted_page": false,
    "allow_fractional_quantities": false,
    "public_signup_page_ids": [
      226,
      227,
      228
    ]
  }
}
```

