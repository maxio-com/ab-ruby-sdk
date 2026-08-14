
# Invoice Address

## Structure

`InvoiceAddress`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `street` | `String` | Optional | - |
| `line_2` | `String` | Optional | - |
| `city` | `String` | Optional | - |
| `state` | `String` | Optional | - |
| `zip` | `String` | Optional | - |
| `country` | `String` | Optional | - |

## Example

```ruby
invoice_address = InvoiceAddress.new(
  street: 'street8',
  line2: 'line22',
  city: 'city8',
  state: 'state4',
  zip: 'zip2'
)
```

