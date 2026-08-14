
# Coupon Currency Response

## Structure

`CouponCurrencyResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency_prices` | [`Array[CouponCurrency]`](../../doc/models/coupon-currency.md) | Optional | - |

## Example

```ruby
coupon_currency_response = CouponCurrencyResponse.new(
  currency_prices: [
    CouponCurrency.new(
      id: 50,
      currency: 'currency8',
      price: 233.74,
      coupon_id: 224
    ),
    CouponCurrency.new(
      id: 50,
      currency: 'currency8',
      price: 233.74,
      coupon_id: 224
    ),
    CouponCurrency.new(
      id: 50,
      currency: 'currency8',
      price: 233.74,
      coupon_id: 224
    )
  ]
)
```

