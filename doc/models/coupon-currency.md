
# Coupon Currency

## Structure

`CouponCurrency`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `currency` | `String` | Optional | - |
| `price` | `Float` | Optional | - |
| `coupon_id` | `Integer` | Optional | - |

## Example

```ruby
coupon_currency = CouponCurrency.new(
  id: 52,
  currency: 'currency8',
  price: 136.44,
  coupon_id: 222
)
```

