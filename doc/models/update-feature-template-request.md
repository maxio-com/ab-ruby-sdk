
# Update Feature Template Request

## Structure

`UpdateFeatureTemplateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `feature` | [`Feature1`](../../doc/models/feature-1.md) | Required | `key` cannot be changed once set. `kind` cannot be changed once any feature catalog item has been created from this template. |

## Example

```ruby
update_feature_template_request = UpdateFeatureTemplateRequest.new(
  feature: Feature1.new(
    name: 'name4',
    description: 'description4',
    unit: 'unit2',
    value_type: FeatureValueType::BOOLEAN,
    default_value: 'default_value4'
  )
)
```

