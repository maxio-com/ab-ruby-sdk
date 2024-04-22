
# Subscription Component Response

## Structure

`SubscriptionComponentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component` | [`SubscriptionComponent`](../../doc/models/subscription-component.md) | Optional | - |

## Example (as JSON)

```json
{
  "component": {
    "id": 80,
    "name": "name8",
    "kind": "quantity_based_component",
    "unit_name": "unit_name0",
    "enabled": false,
    "unit_balance": 248,
    "currency": "currency2",
    "allocated_quantity": 206,
    "pricing_scheme": "per_unit",
    "component_id": 190,
    "component_handle": "component_handle8",
    "subscription_id": 190,
    "recurring": false,
    "upgrade_charge": "prorated",
    "downgrade_credit": "none",
    "archived_at": "2016-03-13T12:52:32.123Z",
    "price_point_id": 42,
    "price_point_handle": "price_point_handle2",
    "price_point_type": "default",
    "price_point_name": "price_point_name8",
    "product_family_id": 172,
    "product_family_handle": "product_family_handle6",
    "created_at": "2016-03-13T12:52:32.123Z",
    "updated_at": "2016-03-13T12:52:32.123Z",
    "use_site_exchange_rate": false,
    "description": "description2",
    "allow_fractional_quantities": false,
    "subscription": {
      "state": "paused",
      "updated_at": "2016-03-13T12:52:32.123Z"
    },
    "historic_usages": [
      {
        "total_usage_quantity": 135.98,
        "billing_period_starts_at": "2016-03-13T12:52:32.123Z",
        "billing_period_ends_at": "2016-03-13T12:52:32.123Z"
      },
      {
        "total_usage_quantity": 135.98,
        "billing_period_starts_at": "2016-03-13T12:52:32.123Z",
        "billing_period_ends_at": "2016-03-13T12:52:32.123Z"
      }
    ],
    "display_on_hosted_page": false,
    "interval": 124,
    "interval_unit": "day"
  }
}
```

