
# Clone Component Price Point Request

## Structure

`CloneComponentPricePointRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | [`CloneComponentPricePoint`](../../doc/models/clone-component-price-point.md) | Required | - |

## Example

```ruby
clone_component_price_point_request = CloneComponentPricePointRequest.new(
  price_point: CloneComponentPricePoint.new(
    name: 'name0',
    handle: 'handle6',
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
)
```

