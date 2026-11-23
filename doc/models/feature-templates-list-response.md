
# Feature Templates List Response

## Structure

`FeatureTemplatesListResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[FeatureTemplate]`](../../doc/models/feature-template.md) | Required | - |
| `total_count` | `Integer` | Required | Total number of feature templates matching the filters, across all pages. |
| `archived_count` | `Integer` | Required | Number of archived feature templates matching the filters. Returned as `0` unless the active result set is empty or `status=archived` was requested. |

## Example

```ruby
feature_templates_list_response = FeatureTemplatesListResponse.new(
  items: [
    FeatureTemplate.new(
      id: 66,
      key: 'sso',
      name: 'Single Sign-On',
      description: 'description2',
      kind: FeatureKind::ACCESS_RIGHT
    )
  ],
  total_count: 236,
  archived_count: 4
)
```

