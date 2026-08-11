
# Invoice Previous Balance

## Structure

`InvoicePreviousBalance`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `captured_at` | `DateTime` | Optional | - |
| `invoices` | [`Array[InvoiceBalanceItem]`](../../doc/models/invoice-balance-item.md) | Optional | - |

## Example

```ruby
invoice_previous_balance = InvoicePreviousBalance.new(
  captured_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoices: [
    InvoiceBalanceItem.new(
      uid: 'uid6',
      number: 'number6',
      outstanding_amount: 'outstanding_amount8'
    ),
    InvoiceBalanceItem.new(
      uid: 'uid6',
      number: 'number6',
      outstanding_amount: 'outstanding_amount8'
    ),
    InvoiceBalanceItem.new(
      uid: 'uid6',
      number: 'number6',
      outstanding_amount: 'outstanding_amount8'
    )
  ]
)
```

