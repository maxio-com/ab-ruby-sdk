
# Coupon Response

## Structure

`CouponResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `coupon` | [`Coupon`](../../doc/models/coupon.md) | Optional | - |

## Example

```ruby
coupon_response = CouponResponse.new(
  coupon: Coupon.new(
    id: 196,
    name: 'name4',
    code: 'code2',
    description: 'description6',
    amount: 97.66
  )
)
```

