
# Error String Map Response Exception

## Structure

`ErrorStringMapResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | `Hash[String, String]` | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue ErrorStringMapResponseException => e
  puts "Caught ErrorStringMapResponseException: #{e.message}"
end
```

