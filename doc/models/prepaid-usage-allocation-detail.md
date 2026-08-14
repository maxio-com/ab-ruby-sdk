
# Prepaid Usage Allocation Detail

## Structure

`PrepaidUsageAllocationDetail`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `allocation_id` | `Integer` | Optional | - |
| `charge_id` | `Integer` | Optional | - |
| `usage_quantity` | `Integer` | Optional | - |

## Example

```ruby
prepaid_usage_allocation_detail = PrepaidUsageAllocationDetail.new(
  allocation_id: 18,
  charge_id: 84,
  usage_quantity: 10
)
```

