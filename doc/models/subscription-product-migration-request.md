
# Subscription Product Migration Request

## Structure

`SubscriptionProductMigrationRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `migration` | [`SubscriptionProductMigration`](../../doc/models/subscription-product-migration.md) | Required | - |

## Example (as JSON)

```json
{
  "migration": {
    "include_trial": false,
    "include_initial_charge": false,
    "include_coupons": true,
    "preserve_period": false,
    "product_id": 158,
    "product_price_point_id": 82,
    "product_handle": "product_handle4",
    "product_price_point_handle": "product_price_point_handle2",
    "proration": {
      "preserve_period": false
    }
  }
}
```

