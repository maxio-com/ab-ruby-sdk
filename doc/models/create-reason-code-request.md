
# Create Reason Code Request

## Structure

`CreateReasonCodeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `reason_code` | [`CreateReasonCode`](../../doc/models/create-reason-code.md) | Required | - |

## Example

```ruby
create_reason_code_request = CreateReasonCodeRequest.new(
  reason_code: CreateReasonCode.new(
    code: 'code4',
    description: 'description6',
    position: 14
  )
)
```

