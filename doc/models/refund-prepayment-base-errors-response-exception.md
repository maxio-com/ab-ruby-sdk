
# Refund Prepayment Base Errors Response Exception

Errors returned on creating a refund prepayment when bad request

## Structure

`RefundPrepaymentBaseErrorsResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`RefundPrepaymentBaseRefundError`](../../doc/models/refund-prepayment-base-refund-error.md) | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue RefundPrepaymentBaseErrorsResponseException => e
  puts "Caught RefundPrepaymentBaseErrorsResponseException: #{e.message}"
end
```

