
# Subscription Migration Preview Request

## Structure

`SubscriptionMigrationPreviewRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `migration` | [`SubscriptionMigrationPreviewOptions`](../../doc/models/subscription-migration-preview-options.md) | Required | - |

## Example

```ruby
subscription_migration_preview_request = SubscriptionMigrationPreviewRequest.new(
  migration: SubscriptionMigrationPreviewOptions.new(
    product_id: 158,
    product_price_point_id: 82,
    include_trial: false,
    include_initial_charge: false,
    include_coupons: true,
    preserve_period: false
  )
)
```

