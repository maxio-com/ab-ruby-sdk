
# Subscription Migration Preview Request

## Structure

`SubscriptionMigrationPreviewRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `migration` | [`SubscriptionMigrationPreviewOptions`](../../doc/models/subscription-migration-preview-options.md) | Required | - |

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
    },
    "proration_date": "2016-03-13T12:52:32.123Z"
  }
}
```

