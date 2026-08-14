
# Update Subscription Group Request

## Structure

`UpdateSubscriptionGroupRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_group` | [`UpdateSubscriptionGroup`](../../doc/models/update-subscription-group.md) | Required | - |

## Example

```ruby
update_subscription_group_request = UpdateSubscriptionGroupRequest.new(
  subscription_group: UpdateSubscriptionGroup.new(
    member_ids: [
      164,
      165
    ]
  )
)
```

