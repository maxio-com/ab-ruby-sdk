
# Invoice Seller

Information about the seller (merchant) listed on the masthead of the invoice.

## Structure

`InvoiceSeller`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | - |
| `address` | [`InvoiceAddress`](../../doc/models/invoice-address.md) | Optional | - |
| `phone` | `String` | Optional | - |
| `logo_url` | `String` | Optional | - |

## Example

```ruby
invoice_seller = InvoiceSeller.new(
  name: 'name2',
  address: InvoiceAddress.new(
    street: 'street6',
    line2: 'line20',
    city: 'city6',
    state: 'state2',
    zip: 'zip0'
  ),
  phone: 'phone2',
  logo_url: 'logo_url2'
)
```

