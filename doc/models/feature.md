
# Feature

## Structure

`Feature`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `key` | `String` | Required | A unique, lowercase, underscore-separated identifier for the feature. Immutable once set. |
| `name` | `String` | Required | The display name of the feature. |
| `description` | `String` | Optional | - |
| `kind` | [`FeatureKind`](../../doc/models/feature-kind.md) | Required | The behavior of a feature:<br><br>- `access_right`: a boolean entitlement. A subscriber either has access or does not.<br>- `usage_limit`: a quantified allowance measured over a recurring period (for example, "10,000 API calls per month").<br>- `service_right`: a free-form value (text, boolean, or number) that isn't a simple access flag or a metered limit. |
| `unit` | `String` | Optional | Required when `kind` is `usage_limit`. |
| `value_type` | [`FeatureValueType`](../../doc/models/feature-value-type.md) | Optional | Required when `kind` is `service_right`. Ignored for other kinds, where it is inferred automatically. |
| `default_value` | `String` | Optional | - |
| `default_periodicity_interval` | `Integer` | Optional | Only valid when `kind` is `usage_limit`. |
| `default_periodicity_unit` | [`EntitlementPeriodicityUnit`](../../doc/models/entitlement-periodicity-unit.md) | Optional | Only valid when `kind` is `usage_limit`. Must be set together with `default_periodicity_interval`. |

## Example

```ruby
feature = Feature.new(
  key: 'sso',
  name: 'name4',
  kind: FeatureKind::USAGE_LIMIT,
  description: 'description4',
  unit: 'unit2',
  value_type: FeatureValueType::BOOLEAN,
  default_value: 'default_value4',
  default_periodicity_interval: 150
)
```

