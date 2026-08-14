
# Void Invoice

## Structure

`VoidInvoice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `reason` | `String` | Required | **Constraints**: *Minimum Length*: `1` |

## Example

```ruby
void_invoice = VoidInvoice.new(
  reason: 'reason6'
)
```

