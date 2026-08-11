
# List Subscription Group Prepayment Item

## Structure

`ListSubscriptionGroupPrepaymentItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `subscription_group_uid` | `String` | Optional | - |
| `amount_in_cents` | `Integer` | Optional | - |
| `remaining_amount_in_cents` | `Integer` | Optional | - |
| `details` | `String` | Optional | - |
| `external` | `TrueClass \| FalseClass` | Optional | - |
| `memo` | `String` | Optional | - |
| `payment_type` | [`PrepaymentMethod`](../../doc/models/prepayment-method.md) | Optional | - |
| `created_at` | `DateTime` | Optional | - |

## Example

```ruby
list_subscription_group_prepayment_item = ListSubscriptionGroupPrepaymentItem.new(
  id: 96,
  subscription_group_uid: 'subscription_group_uid6',
  amount_in_cents: 74,
  remaining_amount_in_cents: 240,
  details: 'details2'
)
```

