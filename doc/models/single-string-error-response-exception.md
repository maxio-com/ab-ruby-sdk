
# Single String Error Response Exception

## Structure

`SingleStringErrorResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | `String` | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue SingleStringErrorResponseException => e
  puts "Caught SingleStringErrorResponseException: #{e.message}"
end
```

