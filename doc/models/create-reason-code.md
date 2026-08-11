
# Create Reason Code

## Structure

`CreateReasonCode`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Required | The unique identifier for the ReasonCode |
| `description` | `String` | Required | The friendly summary of what the code signifies |
| `position` | `Integer` | Optional | The order that code appears in lists |

## Example

```ruby
create_reason_code = CreateReasonCode.new(
  code: 'code6',
  description: 'description8',
  position: 252
)
```

