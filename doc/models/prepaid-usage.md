
# Prepaid Usage

## Structure

`PrepaidUsage`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `previous_unit_balance` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `previous_overage_unit_balance` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `new_unit_balance` | Integer \| String | Required | This is a container for one-of cases. |
| `new_overage_unit_balance` | Integer \| String | Required | This is a container for one-of cases. |
| `usage_quantity` | `Integer` | Required | - |
| `overage_usage_quantity` | `Integer` | Required | - |
| `component_id` | `Integer` | Required | - |
| `component_handle` | `String` | Required | - |
| `memo` | `String` | Required | - |
| `allocation_details` | [`Array[PrepaidUsageAllocationDetail]`](../../doc/models/prepaid-usage-allocation-detail.md) | Required | - |

## Example

```ruby
prepaid_usage = PrepaidUsage.new(
  previous_unit_balance: 'previous_unit_balance2',
  previous_overage_unit_balance: 'previous_overage_unit_balance2',
  new_unit_balance: 180,
  new_overage_unit_balance: 204,
  usage_quantity: 220,
  overage_usage_quantity: 144,
  component_id: 182,
  component_handle: 'component_handle2',
  memo: 'memo6',
  allocation_details: [
    PrepaidUsageAllocationDetail.new(
      allocation_id: 18,
      charge_id: 84,
      usage_quantity: 10
    )
  ]
)
```

