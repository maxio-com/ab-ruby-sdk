
# Coupon Currency Request

## Structure

`CouponCurrencyRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency_prices` | [`Array[UpdateCouponCurrency]`](../../doc/models/update-coupon-currency.md) | Required | - |

## Example

```ruby
coupon_currency_request = CouponCurrencyRequest.new(
  currency_prices: [
    UpdateCouponCurrency.new(
      currency: 'currency8',
      price: 78
    )
  ]
)
```

