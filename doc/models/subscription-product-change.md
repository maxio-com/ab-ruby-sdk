
# Subscription Product Change

Event data for both `subscription_product_change` and `subscription_product_change_scheduled`. The price point and `effective_at` fields are only populated for scheduled changes.

## Structure

`SubscriptionProductChange`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `previous_product_id` | `Integer` | Required | - |
| `new_product_id` | `Integer` | Required | - |
| `previous_product_price_point_id` | `Integer` | Optional | - |
| `new_product_price_point_id` | `Integer` | Optional | - |
| `effective_at` | `DateTime` | Optional | When the scheduled product change takes effect (the subscription's next renewal). Only sent for `subscription_product_change_scheduled`. |

## Example

```ruby
subscription_product_change = SubscriptionProductChange.new(
  previous_product_id: 250,
  new_product_id: 120,
  previous_product_price_point_id: 118,
  new_product_price_point_id: 112,
  effective_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

