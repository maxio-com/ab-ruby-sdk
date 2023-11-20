
# Prepaid Usage

## Structure

`PrepaidUsage`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `previous_unit_balance` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `previous_overage_unit_balance` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `new_unit_balance` | `Integer` | Required | - |
| `new_overage_unit_balance` | `Integer` | Required | - |
| `usage_quantity` | `Integer` | Required | - |
| `overage_usage_quantity` | `Integer` | Required | - |
| `component_id` | `Integer` | Required | - |
| `component_handle` | `String` | Required | - |
| `memo` | `String` | Required | - |
| `allocation_details` | [`Array<PrepaidUsageAllocationDetail>`](../../doc/models/prepaid-usage-allocation-detail.md) | Required | - |

## Example (as JSON)

```json
{
  "previous_unit_balance": "previous_unit_balance0",
  "previous_overage_unit_balance": "previous_overage_unit_balance4",
  "new_unit_balance": 252,
  "new_overage_unit_balance": 224,
  "usage_quantity": 214,
  "overage_usage_quantity": 106,
  "component_id": 176,
  "component_handle": "component_handle4",
  "memo": "memo8",
  "allocation_details": [
    {
      "allocation_id": 18,
      "charge_id": 84,
      "usage_quantity": 10
    }
  ]
}
```

