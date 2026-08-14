
# Update Coupon Currency

## Structure

`UpdateCouponCurrency`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency` | `String` | Required | ISO code for the site defined currency. |
| `price` | `Integer` | Required | Price for the given currency. |

## Example

```ruby
update_coupon_currency = UpdateCouponCurrency.new(
  currency: 'currency6',
  price: 14
)
```

