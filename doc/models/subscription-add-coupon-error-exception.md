
# Subscription Add Coupon Error Exception

## Structure

`SubscriptionAddCouponErrorException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `codes` | `Array[String]` | Optional | - |
| `coupon_code` | `Array[String]` | Optional | - |
| `coupon_codes` | `Array[String]` | Optional | - |
| `subscription` | `Array[String]` | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue SubscriptionAddCouponErrorException => e
  puts "Caught SubscriptionAddCouponErrorException: #{e.message}"
end
```

