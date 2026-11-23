
# Feature Catalog Items List Response

## Structure

`FeatureCatalogItemsListResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `features` | [`Array[FeatureCatalogItem]`](../../doc/models/feature-catalog-item.md) | Required | - |
| `subscriptions_count` | `Integer` | Required | The number of subscriptions on this product/component that would be affected if a feature catalog item change were propagated with `propagate_to_subscriptions=true`. |

## Example

```ruby
feature_catalog_items_list_response = FeatureCatalogItemsListResponse.new(
  features: [
    FeatureCatalogItem.new(
      id: 174,
      feature_template_id: 164,
      feature_key: 'feature_key2',
      feature_name: 'feature_name6',
      feature_kind: FeatureKind::ACCESS_RIGHT
    )
  ],
  subscriptions_count: 214
)
```

