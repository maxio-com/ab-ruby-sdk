
# List Subscription Groups Response

## Structure

`ListSubscriptionGroupsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_groups` | [`Array[ListSubscriptionGroupsItem]`](../../doc/models/list-subscription-groups-item.md) | Optional | - |
| `meta` | [`ListSubscriptionGroupsMeta`](../../doc/models/list-subscription-groups-meta.md) | Optional | - |

## Example

```ruby
list_subscription_groups_response = ListSubscriptionGroupsResponse.new(
  subscription_groups: [
    ListSubscriptionGroupsItem.new(
      uid: 'uid2',
      scheme: 166,
      customer_id: 186,
      payment_profile_id: 162,
      subscription_ids: [
        40
      ]
    ),
    ListSubscriptionGroupsItem.new(
      uid: 'uid2',
      scheme: 166,
      customer_id: 186,
      payment_profile_id: 162,
      subscription_ids: [
        40
      ]
    )
  ],
  meta: ListSubscriptionGroupsMeta.new(
    current_page: 126,
    total_count: 150
  )
)
```

