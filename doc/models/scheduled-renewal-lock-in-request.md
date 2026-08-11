
# Scheduled Renewal Lock in Request

## Structure

`ScheduledRenewalLockInRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `lock_in_at` | `Date` | Required | Date to lock in the renewal. |

## Example

```ruby
scheduled_renewal_lock_in_request = ScheduledRenewalLockInRequest.new(
  lock_in_at: Date.iso8601('2016-03-13')
)
```

