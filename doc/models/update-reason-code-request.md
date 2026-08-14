
# Update Reason Code Request

## Structure

`UpdateReasonCodeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `reason_code` | [`UpdateReasonCode`](../../doc/models/update-reason-code.md) | Required | - |

## Example

```ruby
update_reason_code_request = UpdateReasonCodeRequest.new(
  reason_code: UpdateReasonCode.new(
    code: 'code4',
    description: 'description6',
    position: 14
  )
)
```

