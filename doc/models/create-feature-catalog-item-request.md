
# Create Feature Catalog Item Request

The owning product or component is taken from the URL and must not be included in the request body.

## Structure

`CreateFeatureCatalogItemRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `feature` | [`Feature2`](../../doc/models/feature-2.md) | Required | - |

## Example

```ruby
create_feature_catalog_item_request = CreateFeatureCatalogItemRequest.new(
  feature: Feature2.new(
    feature_template_id: 196,
    value: 'value6',
    periodicity_interval: 68,
    periodicity_unit: EntitlementPeriodicityUnit::WEEK,
    price_point_type: FeatureOwnerPricePointType::PRODUCTPRICEPOINT,
    price_point_id: 84,
    propagate_to_subscriptions: false
  )
)
```

