
# Update Reason Code

## Structure

`UpdateReasonCode`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | The unique identifier for the ReasonCode |
| `description` | `String` | Optional | The friendly summary of what the code signifies |
| `position` | `Integer` | Optional | The order that code appears in lists |

## Example

```ruby
update_reason_code = UpdateReasonCode.new(
  code: 'code2',
  description: 'description4',
  position: 12
)
```

