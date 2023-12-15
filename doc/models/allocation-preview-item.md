
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
| `upgrade_charge` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided.<br>Available values: `full`, `prorated`, `none`. |
| `downgrade_credit` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided.<br>Available values: `full`, `prorated`, `none`. |
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

