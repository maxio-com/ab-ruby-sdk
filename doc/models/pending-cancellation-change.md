
# Pending Cancellation Change

## Structure

`PendingCancellationChange`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cancellation_state` | `String` | Required | - |
| `cancels_at` | `DateTime` | Required | - |

## Example

```ruby
pending_cancellation_change = PendingCancellationChange.new(
  cancellation_state: 'cancellation_state2',
  cancels_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

