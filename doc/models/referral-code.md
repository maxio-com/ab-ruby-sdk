
# Referral Code

## Structure

`ReferralCode`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `site_id` | `Integer` | Optional | - |
| `subscription_id` | `Integer` | Optional | - |
| `code` | `String` | Optional | - |

## Example

```ruby
referral_code = ReferralCode.new(
  id: 46,
  site_id: 228,
  subscription_id: 156,
  code: 'code0'
)
```

