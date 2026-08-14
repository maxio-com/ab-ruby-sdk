
# Invoice Balance Item

## Structure

`InvoiceBalanceItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `number` | `String` | Optional | - |
| `outstanding_amount` | `String` | Optional | - |

## Example

```ruby
invoice_balance_item = InvoiceBalanceItem.new(
  uid: 'uid4',
  number: 'number2',
  outstanding_amount: 'outstanding_amount0'
)
```

