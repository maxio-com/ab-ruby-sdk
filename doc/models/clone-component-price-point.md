
# Clone Component Price Point

## Structure

`CloneComponentPricePoint`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `handle` | `String` | Optional | - |
| `feature_catalog_items` | [`Array[CloneFeatureCatalogItem]`](../../doc/models/clone-feature-catalog-item.md) | Optional | The features the clone gets. The clone does not copy the source price point's features, so send every feature it should have. |

## Example

```ruby
clone_component_price_point = CloneComponentPricePoint.new(
  name: 'name2',
  handle: 'handle8',
  feature_catalog_items: [
    CloneFeatureCatalogItem.new(
      feature_template_id: 8,
      value: 'value4',
      periodicity_interval: 136,
      periodicity_unit: EntitlementPeriodicityUnit::HOUR,
      grant_expiration_interval: 60,
      grant_expiration_unit: GrantExpirationUnit::MONTH
    ),
    CloneFeatureCatalogItem.new(
      feature_template_id: 8,
      value: 'value4',
      periodicity_interval: 136,
      periodicity_unit: EntitlementPeriodicityUnit::HOUR,
      grant_expiration_interval: 60,
      grant_expiration_unit: GrantExpirationUnit::MONTH
    ),
    CloneFeatureCatalogItem.new(
      feature_template_id: 8,
      value: 'value4',
      periodicity_interval: 136,
      periodicity_unit: EntitlementPeriodicityUnit::HOUR,
      grant_expiration_interval: 60,
      grant_expiration_unit: GrantExpirationUnit::MONTH
    )
  ]
)
```

