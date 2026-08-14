
# Error Array Map Response Exception

## Structure

`ErrorArrayMapResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue ErrorArrayMapResponseException => e
  puts "Caught ErrorArrayMapResponseException: #{e.message}"
end
```

