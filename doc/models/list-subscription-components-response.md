
# List Subscription Components Response

## Structure

`ListSubscriptionComponentsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscriptions_components` | [`Array<SubscriptionComponent>`](../../doc/models/subscription-component.md) | Required | - |

## Example (as JSON)

```json
{
  "subscriptions_components": [
    {
      "id": 138,
      "name": "name2",
      "kind": "metered_component",
      "unit_name": "unit_name4",
      "enabled": false,
      "unit_balance": 50,
      "currency": "currency2",
      "allocated_quantity": 8,
      "pricing_scheme": "stairstep",
      "component_id": 248,
      "component_handle": "component_handle2",
      "subscription_id": 248,
      "recurring": false,
      "upgrade_charge": "none",
      "downgrade_credit": "none",
      "archived_at": "2016-03-13T12:52:32.123Z",
      "price_point_id": 240,
      "price_point_handle": "price_point_handle2",
      "price_point_type": "default",
      "price_point_name": "price_point_name4",
      "product_family_id": 142,
      "product_family_handle": "product_family_handle8",
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
      "interval": 190,
      "interval_unit": "day"
    }
  ]
}
```

