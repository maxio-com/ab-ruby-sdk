
# Address Change

## Structure

`AddressChange`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `before` | [`InvoiceAddress`](../../doc/models/invoice-address.md) | Required | - |
| `after` | [`InvoiceAddress`](../../doc/models/invoice-address.md) | Required | - |

## Example

```ruby
address_change = AddressChange.new(
  before: InvoiceAddress.new(
    street: 'street0',
    line2: 'line24',
    city: 'city0',
    state: 'state6',
    zip: 'zip4'
  ),
  after: InvoiceAddress.new(
    street: 'street2',
    line2: 'line26',
    city: 'city8',
    state: 'state2',
    zip: 'zip4'
  )
)
```

