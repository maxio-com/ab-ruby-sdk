
# Subscription Group Create Error Response Errors

## Data Type

`SubscriptionGroupMembersArrayError | SubscriptionGroupSingleError | String`

## Cases

| Type |
|  --- |
| [`SubscriptionGroupMembersArrayError`](../../../doc/models/subscription-group-members-array-error.md) |
| [`SubscriptionGroupSingleError`](../../../doc/models/subscription-group-single-error.md) |
| `String` |

## SubscriptionGroupMembersArrayError

### Initialization Code

#### Example

```ruby
value = SubscriptionGroupMembersArrayError.new(
  members: [
    'members6'
  ]
)
```

## SubscriptionGroupSingleError

### Initialization Code

#### Example

```ruby
value = SubscriptionGroupSingleError.new(
  subscription_group: 'subscription_group2'
)
```

## String

### Initialization Code

#### Example

```ruby
value = 'String0'
```

