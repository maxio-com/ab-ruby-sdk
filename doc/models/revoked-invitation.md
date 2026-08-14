
# Revoked Invitation

## Structure

`RevokedInvitation`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `last_sent_at` | `String` | Optional | - |
| `last_accepted_at` | `String` | Optional | - |
| `uninvited_count` | `Integer` | Optional | - |

## Example

```ruby
revoked_invitation = RevokedInvitation.new(
  last_sent_at: 'last_sent_at4',
  last_accepted_at: 'last_accepted_at4',
  uninvited_count: 58
)
```

