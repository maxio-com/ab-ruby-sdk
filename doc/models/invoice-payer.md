
# Invoice Payer

## Structure

`InvoicePayer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `chargify_id` | `Integer` | Optional | - |
| `first_name` | `String` | Optional | - |
| `last_name` | `String` | Optional | - |
| `organization` | `String` | Optional | - |
| `email` | `String` | Optional | - |
| `vat_number` | `String` | Optional | - |

## Example

```ruby
invoice_payer = InvoicePayer.new(
  chargify_id: 108,
  first_name: 'first_name2',
  last_name: 'last_name0',
  organization: 'organization4',
  email: 'email4'
)
```

