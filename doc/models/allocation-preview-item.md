
# Allocation Preview Item

## Structure

`AllocationPreviewItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_id` | `Integer` | Optional | - |
| `subscription_id` | `Integer` | Optional | - |
| `quantity` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `previous_quantity` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `memo` | `String` | Optional | - |
| `timestamp` | `String` | Optional | - |
| `proration_upgrade_scheme` | `String` | Optional | - |
| `proration_downgrade_scheme` | `String` | Optional | - |
| `accrue_charge` | `TrueClass \| FalseClass` | Optional | - |
| `upgrade_charge` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided.<br>Available values: `full`, `prorated`, `none`. |
| `downgrade_credit` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided.<br>Available values: `full`, `prorated`, `none`. |
| `price_point_id` | `Integer` | Optional | - |
| `interval` | `Integer` | Optional | The numerical interval. i.e. an interval of ‘30’ coupled with an interval_unit of day would mean this component price point would renew every 30 days. This property is only available for sites with Multifrequency enabled. |
| `interval_unit` | [`IntervalUnit`](../../doc/models/interval-unit.md) | Optional | A string representing the interval unit for this component price point, either month or day. This property is only available for sites with Multifrequency enabled. |
| `previous_price_point_id` | `Integer` | Optional | - |
| `price_point_handle` | `String` | Optional | - |
| `price_point_name` | `String` | Optional | - |
| `component_handle` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "component_id": 54,
  "subscription_id": 54,
  "quantity": 78,
  "previous_quantity": 192,
  "memo": "memo6"
}
```

