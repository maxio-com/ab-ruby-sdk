
# Subscription Group Response

## Structure

`SubscriptionGroupResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_group` | [`SubscriptionGroup`](../../doc/models/subscription-group.md) | Required | - |

## Example

```ruby
subscription_group_response = SubscriptionGroupResponse.new(
  subscription_group: SubscriptionGroup.new(
    uid: 'uid8',
    customer_id: 220,
    payment_profile: SubscriptionGroupPaymentProfile.new(
      id: 44,
      first_name: 'first_name4',
      last_name: 'last_name2',
      masked_card_number: 'masked_card_number2'
    ),
    payment_collection_method: CollectionMethod::PREPAID,
    subscription_ids: [
      74,
      75
    ]
  )
)
```

