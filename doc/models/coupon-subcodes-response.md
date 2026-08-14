
# Coupon Subcodes Response

## Structure

`CouponSubcodesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `created_codes` | `Array[String]` | Optional | - |
| `duplicate_codes` | `Array[String]` | Optional | - |
| `invalid_codes` | `Array[String]` | Optional | - |

## Example

```ruby
coupon_subcodes_response = CouponSubcodesResponse.new(
  created_codes: [
    'created_codes7',
    'created_codes8'
  ],
  duplicate_codes: [
    'duplicate_codes0',
    'duplicate_codes1'
  ],
  invalid_codes: [
    'invalid_codes4'
  ]
)
```

