
# Subscription Product Change Scheduled

## Structure

`SubscriptionProductChangeScheduled`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `previous_product_id` | `Integer` | Required | - |
| `new_product_id` | `Integer` | Required | - |
| `previous_product_price_point_id` | `Integer` | Optional | - |
| `new_product_price_point_id` | `Integer` | Optional | - |
| `effective_at` | `DateTime` | Optional | When the scheduled product change takes effect (the subscription's next renewal). |

## Example

```ruby
subscription_product_change_scheduled = SubscriptionProductChangeScheduled.new(
  previous_product_id: 50,
  new_product_id: 64,
  previous_product_price_point_id: 174,
  new_product_price_point_id: 168,
  effective_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

