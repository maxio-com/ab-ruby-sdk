
# Subscription Group Signup Component

## Structure

`SubscriptionGroupSignupComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_id` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `allocated_quantity` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `unit_balance` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `price_point_id` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `custom_price` | [`SubscriptionGroupComponentCustomPrice`](../../doc/models/subscription-group-component-custom-price.md) | Optional | Used in place of `price_point_id` to define a custom price point unique to the subscription. You still need to provide `component_id`. |

## Example (as JSON)

```json
{
  "component_id": "String1",
  "allocated_quantity": "String5",
  "unit_balance": "String9",
  "price_point_id": "String5",
  "custom_price": {
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
    "overage_pricing": [
      {
        "tax_included": false,
        "pricing_scheme": "stairstep",
        "interval": 230,
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
        "tax_included": false,
        "pricing_scheme": "stairstep",
        "interval": 230,
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
        "tax_included": false,
        "pricing_scheme": "stairstep",
        "interval": 230,
        "interval_unit": "day",
        "prices": [
          {
            "starting_quantity": 242,
            "ending_quantity": 40,
            "unit_price": 23.26
          }
        ]
      }
    ]
  }
}
```

