
# Too Many Management Link Requests

## Structure

`TooManyManagementLinkRequests`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `error` | `String` | Required | - |
| `new_link_available_at` | `DateTime` | Required | - |

## Example

```ruby
too_many_management_link_requests = TooManyManagementLinkRequests.new(
  error: 'error4',
  new_link_available_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

