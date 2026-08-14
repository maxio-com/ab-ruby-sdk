
# Resent Invitation

## Structure

`ResentInvitation`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `last_sent_at` | `String` | Optional | - |
| `last_accepted_at` | `String` | Optional | - |
| `send_invite_link_text` | `String` | Optional | - |
| `uninvited_count` | `Integer` | Optional | - |
| `last_invite_sent_at` | `DateTime` | Optional | - |
| `last_invite_accepted_at` | `DateTime` | Optional | - |

## Example

```ruby
resent_invitation = ResentInvitation.new(
  last_sent_at: 'last_sent_at6',
  last_accepted_at: 'last_accepted_at6',
  send_invite_link_text: 'send_invite_link_text4',
  uninvited_count: 78,
  last_invite_sent_at: DateTimeHelper.from_rfc3339('2024-01-01T04:30:00+00:00'),
  last_invite_accepted_at: DateTimeHelper.from_rfc3339('2024-01-01T04:35:00+00:00')
)
```

