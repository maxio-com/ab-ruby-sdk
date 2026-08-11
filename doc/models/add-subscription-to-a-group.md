
# Add Subscription to a Group

## Structure

`AddSubscriptionToAGroup`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `group` | [`GroupSettings`](../../doc/models/group-settings.md) | Optional | - |

## Example

```ruby
add_subscription_to_a_group = AddSubscriptionToAGroup.new(
  group: GroupSettings.new(
    target: GroupTarget.new(
      type: GroupTargetType::PARENT,
      id: 236
    ),
    billing: GroupBilling.new(
      accrue: false,
      align_date: false,
      prorate: false
    )
  )
)
```

