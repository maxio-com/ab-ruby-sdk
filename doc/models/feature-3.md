
# Feature 3

## Structure

`Feature3`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `String` | Optional | - |
| `periodicity_interval` | `Integer` | Optional | - |
| `periodicity_unit` | [`EntitlementPeriodicityUnit`](../../doc/models/entitlement-periodicity-unit.md) | Optional | - |
| `propagate_to_subscriptions` | `TrueClass \| FalseClass` | Optional | When `true`, existing subscriptions on the item's price point are updated with the new `value`/periodicity by a background job shortly after. Has no effect on a product/component-level item. When `false` (default) and the item's price point already has subscribers, the update is made on a clone of the price point instead, and existing subscribers are unaffected.<br><br>**Default**: `false` |

## Example

```ruby
feature3 = Feature3.new(
  value: 'value0',
  periodicity_interval: 222,
  periodicity_unit: EntitlementPeriodicityUnit::DAY,
  propagate_to_subscriptions: false
)
```

