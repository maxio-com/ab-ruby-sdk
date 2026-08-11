
# Offer Signup Page

## Structure

`OfferSignupPage`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `nickname` | `String` | Optional | - |
| `enabled` | `TrueClass \| FalseClass` | Optional | - |
| `return_url` | `String` | Optional | - |
| `return_params` | `String` | Optional | - |
| `url` | `String` | Optional | - |

## Example

```ruby
offer_signup_page = OfferSignupPage.new(
  id: 78,
  nickname: 'nickname0',
  enabled: false,
  return_url: 'return_url0',
  return_params: 'return_params2'
)
```

