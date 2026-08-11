
# Reason Code Response

## Structure

`ReasonCodeResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `reason_code` | [`ReasonCode`](../../doc/models/reason-code.md) | Required | - |

## Example

```ruby
reason_code_response = ReasonCodeResponse.new(
  reason_code: ReasonCode.new(
    id: 240,
    site_id: 166,
    code: 'code4',
    description: 'description6',
    position: 14
  )
)
```

