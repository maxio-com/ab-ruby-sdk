
# Subscription Product Migration Request

## Structure

`SubscriptionProductMigrationRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `migration` | [`SubscriptionProductMigration`](../../doc/models/subscription-product-migration.md) | Required | - |

## Example

```ruby
subscription_product_migration_request = SubscriptionProductMigrationRequest.new(
  migration: SubscriptionProductMigration.new(
    product_id: 158,
    product_price_point_id: 82,
    include_trial: false,
    include_initial_charge: false,
    include_coupons: true,
    preserve_period: false
  )
)
```

