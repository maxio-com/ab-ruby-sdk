
# Create Subscription Component

## Structure

`CreateSubscriptionComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_id` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `enabled` | `TrueClass \| FalseClass` | Optional | Used for on/off components only. |
| `unit_balance` | `Integer` | Optional | Used for metered and events based components. |
| `allocated_quantity` | `Integer` | Optional | Used for quantity based components. |
| `quantity` | `Integer` | Optional | Deprecated. Use `allocated_quantity` instead. |
| `price_point_id` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `custom_price` | [`ComponentCustomPrice`](../../doc/models/component-custom-price.md) | Optional | Create or update custom pricing unique to the subscription. Used in place of `price_point_id`. |

## Example (as JSON)

```json
{
  "component_id": 8,
  "enabled": false,
  "unit_balance": 144,
  "allocated_quantity": 180,
  "quantity": 188
}
```

