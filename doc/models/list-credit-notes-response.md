
# List Credit Notes Response

## Structure

`ListCreditNotesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `credit_notes` | [`Array[CreditNote]`](../../doc/models/credit-note.md) | Required | - |

## Example

```ruby
list_credit_notes_response = ListCreditNotesResponse.new(
  credit_notes: [
    CreditNote.new(
      uid: 'uid2',
      site_id: 112,
      customer_id: 224,
      subscription_id: 40,
      number: 'number0'
    )
  ]
)
```

