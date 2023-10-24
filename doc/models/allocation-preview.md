
# Allocation Preview

## Structure

`AllocationPreview`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `start_date` | `String` | Optional | - |
| `end_date` | `String` | Optional | - |
| `subtotal_in_cents` | `Integer` | Optional | - |
| `total_tax_in_cents` | `Integer` | Optional | - |
| `total_discount_in_cents` | `Integer` | Optional | - |
| `total_in_cents` | `Integer` | Optional | - |
| `direction` | `String` | Optional | - |
| `proration_scheme` | `String` | Optional | - |
| `line_items` | [`Array<AllocationPreviewLineItem>`](../../doc/models/allocation-preview-line-item.md) | Optional | - |
| `accrue_charge` | `TrueClass \| FalseClass` | Optional | - |
| `allocations` | [`Array<AllocationPreviewItem>`](../../doc/models/allocation-preview-item.md) | Optional | - |
| `period_type` | `String` | Optional | - |
| `existing_balance_in_cents` | `Integer` | Optional | An integer representing the amount of the subscription's current balance |

## Example (as JSON)

```json
{
  "start_date": "start_date2",
  "end_date": "end_date8",
  "subtotal_in_cents": 4,
  "total_tax_in_cents": 128,
  "total_discount_in_cents": 122
}
```

