
# Proforma Bad Request Error Response Exception

## Structure

`ProformaBadRequestErrorResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`ProformaError`](../../doc/models/proforma-error.md) | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue ProformaBadRequestErrorResponseException => e
  puts "Caught ProformaBadRequestErrorResponseException: #{e.message}"
end
```

