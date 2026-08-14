
# Event Response

## Structure

`EventResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `event` | [`Event`](../../doc/models/event.md) | Required | - |

## Example

```ruby
event_response = EventResponse.new(
  event: Event.new(
    id: 242,
    key: EventKey::SUBSCRIPTION_REMOVED_FROM_GROUP,
    message: 'message0',
    subscription_id: 96,
    customer_id: 24,
    created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    event_specific_data: SubscriptionProductChange.new(
      previous_product_id: 126,
      new_product_id: 12,
      previous_product_price_point_id: 250,
      new_product_price_point_id: 244,
      effective_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
    )
  )
)
```

