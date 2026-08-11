
# List Subscription Groups Item

## Structure

`ListSubscriptionGroupsItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `scheme` | `Integer` | Optional | - |
| `customer_id` | `Integer` | Optional | - |
| `payment_profile_id` | `Integer` | Optional | - |
| `subscription_ids` | `Array[Integer]` | Optional | - |
| `primary_subscription_id` | `Integer` | Optional | - |
| `next_assessment_at` | `DateTime` | Optional | - |
| `state` | `String` | Optional | - |
| `cancel_at_end_of_period` | `TrueClass \| FalseClass` | Optional | - |
| `account_balances` | [`SubscriptionGroupBalances`](../../doc/models/subscription-group-balances.md) | Optional | - |
| `group_type` | [`GroupType`](../../doc/models/group-type.md) | Optional | - |

## Example

```ruby
list_subscription_groups_item = ListSubscriptionGroupsItem.new(
  uid: 'uid0',
  scheme: 62,
  customer_id: 82,
  payment_profile_id: 246,
  subscription_ids: [
    192,
    193,
    194
  ]
)
```

