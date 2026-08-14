
# Allocation Expiration Date

## Structure

`AllocationExpirationDate`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `expires_at` | `DateTime` | Optional | - |

## Example

```ruby
allocation_expiration_date = AllocationExpirationDate.new(
  expires_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

