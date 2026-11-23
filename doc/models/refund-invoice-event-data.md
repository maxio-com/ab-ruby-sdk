
# Refund Invoice Event Data

Example schema for an `refund_invoice` event

## Structure

`RefundInvoiceEventData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `apply_credit` | `TrueClass \| FalseClass` | Required | If true, credit was created and applied it to the invoice.<br><br>If false, no credit note was created. `credit_note_attributes` is still present, but its `number` and `sequence_number` are `null`. |
| `consolidation_level` | [`InvoiceConsolidationLevel`](../../doc/models/invoice-consolidation-level.md) | Optional | Consolidation level of the invoice, which is applicable to invoice consolidation. It will hold one of the following values:<br><br>* "none": A normal invoice with no consolidation.<br>* "child": An invoice segment which has been combined into a consolidated invoice.<br>* "parent": A consolidated invoice, whose contents are composed of invoice segments.<br><br>"Parent" invoices do not have lines of their own, but they have subtotals and totals which aggregate the member invoice segments.<br><br>See also the [invoice consolidation documentation](https://docs.maxio.com/billing/invoicing/working-with-invoices/understand-invoice-consolidation). |
| `credit_note_attributes` | [`CreditNote`](../../doc/models/credit-note.md) | Required | - |
| `memo` | `String` | Optional | The refund memo. |
| `original_amount` | `String` | Optional | The full, original amount of the refund. |
| `payment_id` | `Integer` | Required | The ID of the payment transaction to be refunded. |
| `refund_amount` | `String` | Required | The amount of the refund. |
| `refund_id` | `Integer` | Required | The ID of the refund transaction. |
| `transaction_time` | `DateTime` | Required | The time the refund was applied, in ISO 8601 format, i.e. "2019-06-07T17:20:06Z" |

## Example

```ruby
refund_invoice_event_data = RefundInvoiceEventData.new(
  apply_credit: false,
  credit_note_attributes: CreditNote.new(
    uid: 'uid2',
    site_id: 72,
    customer_id: 184,
    subscription_id: 0,
    number: 'number0'
  ),
  payment_id: 150,
  refund_amount: 'refund_amount0',
  refund_id: 194,
  transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  consolidation_level: InvoiceConsolidationLevel::NONE,
  memo: 'memo8',
  original_amount: 'original_amount8'
)
```

