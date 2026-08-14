
# Component Allocation Error Exception

## Structure

`ComponentAllocationErrorException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`Array[ComponentAllocationErrorItem]`](../../doc/models/component-allocation-error-item.md) | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue ComponentAllocationErrorException => e
  puts "Caught ComponentAllocationErrorException: #{e.message}"
end
```

