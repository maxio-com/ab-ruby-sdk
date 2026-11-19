
# Subscription Group Item

## Structure

`SubscriptionGroupItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `reference` | `String` | Optional | - |
| `customer_id` | `Integer` | Optional | The ID of the customer the subscription belongs to. This is the payer unless the signup request named another customer for the subscription. |
| `product_id` | `Integer` | Optional | - |
| `product_handle` | `String` | Optional | - |
| `product_price_point_id` | `Integer` | Optional | - |
| `product_price_point_handle` | `String` | Optional | - |
| `currency` | `String` | Optional | - |
| `coupon_code` | `String` | Optional | - |
| `total_revenue_in_cents` | `Integer` | Optional | - |
| `balance_in_cents` | `Integer` | Optional | - |

## Example

```ruby
subscription_group_item = SubscriptionGroupItem.new(
  id: 214,
  reference: 'reference2',
  customer_id: 252,
  product_id: 156,
  product_handle: 'product_handle6'
)
```

