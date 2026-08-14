
# Create Subscription Group

## Structure

`CreateSubscriptionGroup`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `Integer` | Required | - |
| `member_ids` | `Array[Integer]` | Optional | - |

## Example

```ruby
create_subscription_group = CreateSubscriptionGroup.new(
  subscription_id: 130,
  member_ids: [
    230
  ]
)
```

