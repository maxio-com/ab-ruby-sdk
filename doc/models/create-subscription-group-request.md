
# Create Subscription Group Request

## Structure

`CreateSubscriptionGroupRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_group` | [`CreateSubscriptionGroup`](../../doc/models/create-subscription-group.md) | Required | - |

## Example

```ruby
create_subscription_group_request = CreateSubscriptionGroupRequest.new(
  subscription_group: CreateSubscriptionGroup.new(
    subscription_id: 36,
    member_ids: [
      164,
      165
    ]
  )
)
```

