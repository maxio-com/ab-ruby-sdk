
# Apply Credit Note Event Data

Example schema for an `apply_credit_note` event

## Structure

`ApplyCreditNoteEventData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | Unique identifier for the credit note application. It is generated automatically by Chargify and has the prefix "cdt_" followed by alphanumeric characters. |
| `credit_note_number` | `String` | Optional | A unique, identifying string that appears on the credit note and in places it is referenced. |
| `credit_note_uid` | `String` | Optional | Unique identifier for the credit note. It is generated automatically by Chargify and has the prefix "cn_" followed by alphanumeric characters. |
| `original_amount` | `String` | Optional | The full, original amount of the credit note. |
| `applied_amount` | `String` | Optional | The amount of the credit note applied to invoice. |
| `transaction_time` | `DateTime` | Optional | The time the credit note was applied, in ISO 8601 format, i.e. "2019-06-07T17:20:06Z" |
| `memo` | `String` | Optional | The credit note memo. |
| `role` | `String` | Optional | The role of the credit note (e.g. 'general') |
| `consolidated_invoice` | `TrueClass \| FalseClass` | Optional | Shows whether it was applied to consolidated invoice or not |
| `applied_credit_notes` | [`Array<AppliedCreditNote>`](../../doc/models/applied-credit-note.md) | Optional | List of credit notes applied to children invoices (if consolidated invoice) |

## Example (as JSON)

```json
{
  "uid": "uid2",
  "credit_note_number": "credit_note_number4",
  "credit_note_uid": "credit_note_uid4",
  "original_amount": "original_amount6",
  "applied_amount": "applied_amount6"
}
```

