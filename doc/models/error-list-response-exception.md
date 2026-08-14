
# Error List Response Exception

Error which contains list of messages.

## Structure

`ErrorListResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | `Array[String]` | Required | - |

## Example

```ruby
begin
  # make the API call
rescue ErrorListResponseException => e
  puts "Caught ErrorListResponseException: #{e.message}"
end
```

