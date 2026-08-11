
# Referral Validation Response

## Structure

`ReferralValidationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `referral_code` | [`ReferralCode`](../../doc/models/referral-code.md) | Optional | - |

## Example

```ruby
referral_validation_response = ReferralValidationResponse.new(
  referral_code: ReferralCode.new(
    id: 46,
    site_id: 228,
    subscription_id: 156,
    code: 'code0'
  )
)
```

