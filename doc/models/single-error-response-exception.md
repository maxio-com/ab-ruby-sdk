
# Single Error Response Exception

## Structure

`SingleErrorResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `error` | `String` | Required | - |

## Example

```ruby
begin
  # make the API call
rescue SingleErrorResponseException => e
  puts "Caught SingleErrorResponseException: #{e.message}"
end
```

