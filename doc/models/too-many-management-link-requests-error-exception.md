
# Too Many Management Link Requests Error Exception

## Structure

`TooManyManagementLinkRequestsErrorException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`TooManyManagementLinkRequests`](../../doc/models/too-many-management-link-requests.md) | Required | - |

## Example

```ruby
begin
  # make the API call
rescue TooManyManagementLinkRequestsErrorException => e
  puts "Caught TooManyManagementLinkRequestsErrorException: #{e.message}"
end
```

