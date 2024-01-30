
# Void Invoice Event Data

Example schema for an `void_invoice` event

## Structure

`VoidInvoiceEventData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `credit_note_attributes` | [Credit Note](../../doc/models/credit-note.md) \| nil | Required | This is a container for one-of cases. |
| `memo` | `String` | Required | The memo provided during invoice voiding. |
| `applied_amount` | `String` | Required | The amount of the void. |
| `transaction_time` | `DateTime` | Required | The time the refund was applied, in ISO 8601 format, i.e. "2019-06-07T17:20:06Z" |
| `is_advance_invoice` | `TrueClass \| FalseClass` | Required | If true, the invoice is an advance invoice. |
| `reason` | `String` | Required | The reason for the void. |

## Example (as JSON)

```json
{
  "credit_note_attributes": {
    "uid": "uid2",
    "site_id": 218,
    "customer_id": 74,
    "subscription_id": 146,
    "number": "number0"
  },
  "memo": "memo6",
  "applied_amount": "applied_amount6",
  "transaction_time": "2016-03-13T12:52:32.123Z",
  "is_advance_invoice": false,
  "reason": "reason8"
}
```

