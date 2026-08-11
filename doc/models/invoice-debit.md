
# Invoice Debit

## Structure

`InvoiceDebit`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `debit_note_number` | `String` | Optional | - |
| `debit_note_uid` | `String` | Optional | - |
| `role` | [`DebitNoteRole`](../../doc/models/debit-note-role.md) | Optional | The role of the debit note. |
| `transaction_time` | `DateTime` | Optional | - |
| `memo` | `String` | Optional | - |
| `original_amount` | `String` | Optional | - |
| `applied_amount` | `String` | Optional | - |

## Example

```ruby
invoice_debit = InvoiceDebit.new(
  uid: 'uid2',
  debit_note_number: 'debit_note_number2',
  debit_note_uid: 'debit_note_uid2',
  role: DebitNoteRole::CHARGEBACK,
  transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

