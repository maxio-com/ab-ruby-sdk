
# Subscription Product Change

## Structure

`SubscriptionProductChange`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `previous_product_id` | `Integer` | Required | - |
| `new_product_id` | `Integer` | Required | - |

## Example

```ruby
subscription_product_change = SubscriptionProductChange.new(
  previous_product_id: 250,
  new_product_id: 120
)
```

