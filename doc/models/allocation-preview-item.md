
# Allocation Preview Item

## Structure

`AllocationPreviewItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_id` | `Integer` | Optional | - |
| `subscription_id` | `Integer` | Optional | - |
| `quantity` | `Float` | Optional | - |
| `previous_quantity` | `Integer` | Optional | - |
| `memo` | `String` | Optional | - |
| `timestamp` | `String` | Optional | - |
| `proration_upgrade_scheme` | `String` | Optional | - |
| `proration_downgrade_scheme` | `String` | Optional | - |
| `accrue_charge` | `TrueClass \| FalseClass` | Optional | - |
| `upgrade_charge` | `String` | Optional | - |
| `downgrade_credit` | `String` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |
| `previous_price_point_id` | `Integer` | Optional | - |
| `component_handle` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "component_id": 54,
  "subscription_id": 54,
  "quantity": 173.08,
  "previous_quantity": 14,
  "memo": "memo6"
}
```

