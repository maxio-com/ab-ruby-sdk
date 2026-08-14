
# Subscription Remove Coupon Errors Exception

## Structure

`SubscriptionRemoveCouponErrorsException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription` | `Array[String]` | Required | - |

## Example

```ruby
begin
  # make the API call
rescue SubscriptionRemoveCouponErrorsException => e
  puts "Caught SubscriptionRemoveCouponErrorsException: #{e.message}"
end
```

