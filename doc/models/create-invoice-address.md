
# Create Invoice Address

Overrides the default address.

## Structure

`CreateInvoiceAddress`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `first_name` | `String` | Optional | - |
| `last_name` | `String` | Optional | - |
| `phone` | `String` | Optional | - |
| `address` | `String` | Optional | - |
| `address_2` | `String` | Optional | - |
| `city` | `String` | Optional | - |
| `state` | `String` | Optional | - |
| `zip` | `String` | Optional | - |
| `country` | `String` | Optional | - |

## Example

```ruby
create_invoice_address = CreateInvoiceAddress.new(
  first_name: 'first_name8',
  last_name: 'last_name6',
  phone: 'phone2',
  address: 'address4',
  address_2: 'address_22'
)
```

