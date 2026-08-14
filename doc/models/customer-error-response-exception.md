
# Customer Error Response Exception

## Structure

`CustomerErrorResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [Customer Error](../../doc/models/customer-error.md) \| Array[String] \| nil | Optional | This is a container for one-of cases. |

## Example

```ruby
begin
  # make the API call
rescue CustomerErrorResponseException => e
  puts "Caught CustomerErrorResponseException: #{e.message}"
end
```

