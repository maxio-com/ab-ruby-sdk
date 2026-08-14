
# Subscription Component Allocation Error Exception

## Structure

`SubscriptionComponentAllocationErrorException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`Array[SubscriptionComponentAllocationErrorItem]`](../../doc/models/subscription-component-allocation-error-item.md) | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue SubscriptionComponentAllocationErrorException => e
  puts "Caught SubscriptionComponentAllocationErrorException: #{e.message}"
end
```

