
# Component Price Point Error Exception

## Structure

`ComponentPricePointErrorException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`Array[ComponentPricePointErrorItem]`](../../doc/models/component-price-point-error-item.md) | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue ComponentPricePointErrorException => e
  puts "Caught ComponentPricePointErrorException: #{e.message}"
end
```

