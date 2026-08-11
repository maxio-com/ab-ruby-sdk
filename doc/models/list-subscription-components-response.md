
# List Subscription Components Response

## Structure

`ListSubscriptionComponentsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscriptions_components` | [`Array[SubscriptionComponent]`](../../doc/models/subscription-component.md) | Required | - |

## Example

```ruby
list_subscription_components_response = ListSubscriptionComponentsResponse.new(
  subscriptions_components: [
    SubscriptionComponent.new(
      id: 138,
      name: 'name2',
      kind: ComponentKind::METERED_COMPONENT,
      unit_name: 'unit_name4',
      enabled: false
    )
  ]
)
```

