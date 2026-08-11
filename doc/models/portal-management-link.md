
# Portal Management Link

## Structure

`PortalManagementLink`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `url` | `String` | Optional | - |
| `fetch_count` | `Integer` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `new_link_available_at` | `DateTime` | Optional | - |
| `expires_at` | `DateTime` | Optional | - |
| `last_invite_sent_at` | `DateTime` | Optional | - |

## Example

```ruby
portal_management_link = PortalManagementLink.new(
  url: 'url0',
  fetch_count: 46,
  created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  new_link_available_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  expires_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

