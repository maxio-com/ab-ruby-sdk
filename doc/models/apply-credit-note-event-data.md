
# Apply Credit Note Event Data

Example schema for an `apply_credit_note` event

## Structure

`ApplyCreditNoteEventData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Required | Unique identifier for the credit note application. It is generated automatically by Chargify and has the prefix "cdt_" followed by alphanumeric characters. |
| `credit_note_number` | `String` | Required | A unique, identifying string that appears on the credit note and in places it is referenced. |
| `credit_note_uid` | `String` | Required | Unique identifier for the credit note. It is generated automatically by Chargify and has the prefix "cn_" followed by alphanumeric characters. |
| `original_amount` | `String` | Required | The full, original amount of the credit note. |
| `applied_amount` | `String` | Required | The amount of the credit note applied to invoice. |
| `transaction_time` | `DateTime` | Optional | The time the credit note was applied, in ISO 8601 format, i.e. "2019-06-07T17:20:06Z" |
| `memo` | `String` | Optional | The credit note memo. |
| `role` | `String` | Optional | The role of the credit note (e.g. 'general') |
| `consolidated_invoice` | `TrueClass \| FalseClass` | Optional | Shows whether it was applied to consolidated invoice or not. |
| `applied_credit_notes` | [`Array[AppliedCreditNoteData]`](../../doc/models/applied-credit-note-data.md) | Optional | List of credit notes applied to children invoices (if consolidated invoice) |

## Example

```ruby
apply_credit_note_event_data = ApplyCreditNoteEventData.new(
  uid: 'uid8',
  credit_note_number: 'credit_note_number8',
  credit_note_uid: 'credit_note_uid8',
  original_amount: 'original_amount2',
  applied_amount: 'applied_amount0',
  transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  memo: 'memo2',
  role: 'role8',
  consolidated_invoice: false,
  applied_credit_notes: [
    AppliedCreditNoteData.new(
      uid: 'uid4',
      number: 'number8'
    ),
    AppliedCreditNoteData.new(
      uid: 'uid4',
      number: 'number8'
    ),
    AppliedCreditNoteData.new(
      uid: 'uid4',
      number: 'number8'
    )
  ]
)
```

