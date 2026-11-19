
# Aggregated Entitlement Periodicity

## Structure

`AggregatedEntitlementPeriodicity`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `interval` | `Integer` | Optional | - |
| `unit` | [`EntitlementPeriodicityUnit`](../../doc/models/entitlement-periodicity-unit.md) | Optional | The recurring window over which a `usage_limit` feature's allowance resets. |

## Example

```ruby
aggregated_entitlement_periodicity = AggregatedEntitlementPeriodicity.new(
  interval: 186,
  unit: EntitlementPeriodicityUnit::MONTH
)
```

