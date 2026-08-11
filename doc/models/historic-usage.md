
# Historic Usage

(Optional) For Event Based Components. If the `include=historic_usages` query param is provided, the last ten billing periods will be returned.

## Structure

`HistoricUsage`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `total_usage_quantity` | `Float` | Optional | Total usage of a component for billing period |
| `billing_period_starts_at` | `DateTime` | Optional | Start date of billing period |
| `billing_period_ends_at` | `DateTime` | Optional | End date of billing period |

## Example

```ruby
historic_usage = HistoricUsage.new(
  total_usage_quantity: 247.74,
  billing_period_starts_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  billing_period_ends_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

