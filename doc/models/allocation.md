
# Allocation

## Structure

`Allocation`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `allocation_id` | `Integer` | Optional | The allocation unique ID |
| `component_id` | `Integer` | Optional | The integer component ID for the allocation. This references a component that you have created in your Product setup. |
| `component_handle` | `String` | Optional | The handle of the component. This references a component that you have created in your Product setup. |
| `subscription_id` | `Integer` | Optional | The integer subscription ID for the allocation. This references a unique subscription in your Site. |
| `quantity` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `previous_quantity` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `memo` | `String` | Optional | The memo passed when the allocation was created |
| `timestamp` | `DateTime` | Optional | The time that the allocation was recorded, in ISO 8601 format and UTC timezone, e.g., 2012-11-20T22:00:37Z |
| `created_at` | `DateTime` | Optional | Timestamp indicating when this allocation was created |
| `proration_upgrade_scheme` | `String` | Optional | The scheme used if the proration was an upgrade. This is only present when the allocation was created mid-period. |
| `proration_downgrade_scheme` | `String` | Optional | The scheme used if the proration was a downgrade. This is only present when the allocation was created mid-period. |
| `price_point_id` | `Integer` | Optional | - |
| `price_point_name` | `String` | Optional | - |
| `price_point_handle` | `String` | Optional | - |
| `interval` | `Integer` | Optional | The numerical interval. e.g., an interval of ‘30’ coupled with an interval_unit of day would mean this component price point would renew every 30 days. This property is only available for sites with Multifrequency enabled. |
| `interval_unit` | [`IntervalUnit`](../../doc/models/interval-unit.md) | Optional | A string representing the interval unit for this component price point, either month or day. This property is only available for sites with Multifrequency enabled. |
| `previous_price_point_id` | `Integer` | Optional | - |
| `accrue_charge` | `TrueClass \| FalseClass` | Optional | If the change in cost is an upgrade, this determines if the charge should accrue to the next renewal or if capture should be attempted immediately. |
| `initiate_dunning` | `TrueClass \| FalseClass` | Optional | If true, if the immediate component payment fails, initiate dunning for the subscription.<br>Otherwise, leave the charges on the subscription to pay for at renewal. |
| `upgrade_charge` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided. |
| `downgrade_credit` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided. |
| `payment` | [`PaymentForAllocation`](../../doc/models/payment-for-allocation.md) | Optional | - |
| `expires_at` | `DateTime` | Optional | - |
| `used_quantity` | `Integer` | Optional | - |
| `charge_id` | `Integer` | Optional | - |

## Example

```ruby
allocation = Allocation.new(
  allocation_id: 238,
  component_id: 8,
  component_handle: 'component_handle8',
  subscription_id: 8,
  quantity: 32
)
```

