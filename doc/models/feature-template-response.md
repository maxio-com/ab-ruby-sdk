
# Feature Template Response

## Structure

`FeatureTemplateResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `feature` | [`FeatureTemplate`](../../doc/models/feature-template.md) | Required | A feature that can be granted to subscribers, defined once at the site level and then attached to products or components. |

## Example

```ruby
feature_template_response = FeatureTemplateResponse.new(
  feature: FeatureTemplate.new(
    id: 206,
    key: 'sso',
    name: 'Single Sign-On',
    description: 'description4',
    kind: FeatureKind::USAGE_LIMIT
  )
)
```

