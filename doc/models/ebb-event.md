
# EBB Event

## Structure

`EBBEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `chargify` | [`ChargifyEBB`](../../doc/models/chargify-ebb.md) | Optional | - |

## Example

```ruby
ebb_event = EBBEvent.new(
  chargify: ChargifyEBB.new(
    timestamp: DateTimeHelper.from_rfc3339('2020-02-27T17:45:50-05:00'),
    subscription_id: 1
  )
)
```

