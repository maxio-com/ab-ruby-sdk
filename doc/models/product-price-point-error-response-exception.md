
# Product Price Point Error Response Exception

## Structure

`ProductPricePointErrorResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`ProductPricePointErrors`](../../doc/models/product-price-point-errors.md) | Required | - |

## Example

```ruby
begin
  # make the API call
rescue ProductPricePointErrorResponseException => e
  puts "Caught ProductPricePointErrorResponseException: #{e.message}"
end
```

