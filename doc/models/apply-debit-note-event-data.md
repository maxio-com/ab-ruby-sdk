
# Apply Debit Note Event Data

Example schema for an `apply_debit_note` event

## Structure

`ApplyDebitNoteEventData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `debit_note_number` | `String` | Required | A unique, identifying string that appears on the debit note and in places it is referenced. |
| `debit_note_uid` | `String` | Required | Unique identifier for the debit note. It is generated automatically by Chargify and has the prefix "db_" followed by alphanumeric characters. |
| `original_amount` | `String` | Required | The full, original amount of the debit note. |
| `applied_amount` | `String` | Required | The amount of the debit note applied to invoice. |
| `memo` | `String` | Optional | The debit note memo. |
| `transaction_time` | `DateTime` | Optional | The time the debit note was applied, in ISO 8601 format, i.e. "2019-06-07T17:20:06Z" |

## Example

```ruby
apply_debit_note_event_data = ApplyDebitNoteEventData.new(
  debit_note_number: 'debit_note_number2',
  debit_note_uid: 'debit_note_uid8',
  original_amount: 'original_amount6',
  applied_amount: 'applied_amount6',
  memo: 'memo6',
  transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

