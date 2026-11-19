
# Update Feature Catalog Item Request

## Structure

`UpdateFeatureCatalogItemRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `feature` | [`Feature3`](../../doc/models/feature-3.md) | Required | - |

## Example

```ruby
update_feature_catalog_item_request = UpdateFeatureCatalogItemRequest.new(
  feature: Feature3.new(
    value: 'value6',
    periodicity_interval: 68,
    periodicity_unit: EntitlementPeriodicityUnit::WEEK,
    propagate_to_subscriptions: false
  )
)
```

