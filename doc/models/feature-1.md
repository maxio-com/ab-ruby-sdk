
# Feature 1

`key` cannot be changed once set. `kind` cannot be changed once any feature catalog item has been created from this template.

## Structure

`Feature1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `unit` | `String` | Optional | - |
| `value_type` | [`FeatureValueType`](../../doc/models/feature-value-type.md) | Optional | The data type of a feature's value. For `access_right` features this is always `boolean`, and for `usage_limit` features this is always `numeric`. For `service_right` features, you choose the value type explicitly. |
| `default_value` | `String` | Optional | - |
| `default_periodicity_interval` | `Integer` | Optional | - |
| `default_periodicity_unit` | [`EntitlementPeriodicityUnit`](../../doc/models/entitlement-periodicity-unit.md) | Optional | - |

## Example

```ruby
feature1 = Feature1.new(
  name: 'name8',
  description: 'description8',
  unit: 'unit6',
  value_type: FeatureValueType::TEXT,
  default_value: 'default_value8'
)
```

