
# Create Subscription Component

## Structure

`CreateSubscriptionComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_id` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `enabled` | `TrueClass \| FalseClass` | Optional | Used for on/off components only. |
| `unit_balance` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `allocated_quantity` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `quantity` | `Integer` | Optional | Deprecated. Use `allocated_quantity` instead. |
| `price_point_id` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `custom_price` | [`ComponentCustomPrice`](../../doc/models/component-custom-price.md) | Optional | Create or update custom pricing unique to the subscription. Used in place of `price_point_id`. |

## Example

```ruby
create_subscription_component = CreateSubscriptionComponent.new(
  component_id: 66,
  enabled: false,
  unit_balance: 124,
  allocated_quantity: 160,
  quantity: 246
)
```

