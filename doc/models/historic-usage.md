
# Historic Usage

An optional object for Event Based Components, will be returned if provided `include=historic_usages` query param.

## Structure

`HistoricUsage`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `total_usage_quantity` | `Float` | Optional | Total usage of a component for billing period |
| `billing_period_starts_at` | `DateTime` | Optional | Start date of billing period |
| `billing_period_ends_at` | `DateTime` | Optional | End date of billing period |

## Example (as JSON)

```json
{
  "total_usage_quantity": 26.6,
  "billing_period_starts_at": "2016-03-13T12:52:32.123Z",
  "billing_period_ends_at": "2016-03-13T12:52:32.123Z"
}
```
