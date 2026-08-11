
# Reactivate Subscription Group Request

## Structure

`ReactivateSubscriptionGroupRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `resume` | `TrueClass \| FalseClass` | Optional | - |
| `resume_members` | `TrueClass \| FalseClass` | Optional | - |

## Example

```ruby
reactivate_subscription_group_request = ReactivateSubscriptionGroupRequest.new(
  resume: false,
  resume_members: false
)
```

