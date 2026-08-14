
# Invoice Credit

## Structure

`InvoiceCredit`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `credit_note_number` | `String` | Optional | - |
| `credit_note_uid` | `String` | Optional | - |
| `transaction_time` | `DateTime` | Optional | - |
| `memo` | `String` | Optional | - |
| `original_amount` | `String` | Optional | - |
| `applied_amount` | `String` | Optional | - |

## Example

```ruby
invoice_credit = InvoiceCredit.new(
  uid: 'uid8',
  credit_note_number: 'credit_note_number8',
  credit_note_uid: 'credit_note_uid2',
  transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  memo: 'memo2'
)
```

