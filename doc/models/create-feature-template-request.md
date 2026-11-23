
# Create Feature Template Request

## Structure

`CreateFeatureTemplateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `feature` | [`Feature`](../../doc/models/feature.md) | Required | - |

## Example

```ruby
create_feature_template_request = CreateFeatureTemplateRequest.new(
  feature: Feature.new(
    key: 'sso',
    name: 'name4',
    kind: FeatureKind::USAGE_LIMIT,
    description: 'description4',
    unit: 'unit2',
    value_type: FeatureValueType::BOOLEAN,
    default_value: 'default_value4',
    default_periodicity_interval: 150
  )
)
```

