
# Subscription Component Response

## Structure

`SubscriptionComponentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component` | [`SubscriptionComponent`](../../doc/models/subscription-component.md) | Optional | - |

## Example

```ruby
subscription_component_response = SubscriptionComponentResponse.new(
  component: SubscriptionComponent.new(
    id: 80,
    name: 'name8',
    kind: ComponentKind::QUANTITY_BASED_COMPONENT,
    unit_name: 'unit_name0',
    enabled: false
  )
)
```

