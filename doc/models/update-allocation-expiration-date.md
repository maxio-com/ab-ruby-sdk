
# Update Allocation Expiration Date

## Structure

`UpdateAllocationExpirationDate`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `allocation` | [`AllocationExpirationDate`](../../doc/models/allocation-expiration-date.md) | Optional | - |

## Example

```ruby
update_allocation_expiration_date = UpdateAllocationExpirationDate.new(
  allocation: AllocationExpirationDate.new(
    expires_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  )
)
```

