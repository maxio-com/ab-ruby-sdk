
# Invoice Customer

Information about the customer who is owner or recipient of the invoiced subscription.

## Structure

`InvoiceCustomer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `chargify_id` | `Integer` | Optional | - |
| `first_name` | `String` | Optional | - |
| `last_name` | `String` | Optional | - |
| `organization` | `String` | Optional | - |
| `email` | `String` | Optional | - |
| `vat_number` | `String` | Optional | - |
| `reference` | `String` | Optional | - |

## Example

```ruby
invoice_customer = InvoiceCustomer.new(
  chargify_id: 52,
  first_name: 'first_name0',
  last_name: 'last_name8',
  organization: 'organization4',
  email: 'email6'
)
```

