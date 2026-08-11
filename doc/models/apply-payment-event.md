
# Apply Payment Event

## Structure

`ApplyPaymentEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `timestamp` | `DateTime` | Required | - |
| `invoice` | [`Invoice`](../../doc/models/invoice.md) | Required | - |
| `event_type` | [`InvoiceEventType`](../../doc/models/invoice-event-type.md) | Required | **Default**: `InvoiceEventType::APPLY_PAYMENT` |
| `event_data` | [`ApplyPaymentEventData`](../../doc/models/apply-payment-event-data.md) | Required | Example schema for an `apply_payment` event |

## Example

```ruby
apply_payment_event = ApplyPaymentEvent.new(
  id: 244,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    id: 166,
    uid: 'uid6',
    site_id: 92,
    customer_id: 204,
    subscription_id: 20,
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::APPLY_PAYMENT,
  event_data: ApplyPaymentEventData.new(
    consolidation_level: InvoiceConsolidationLevel::CHILD,
    memo: 'memo0',
    original_amount: 'original_amount0',
    applied_amount: 'applied_amount2',
    transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    payment_method: PaymentMethodApplePay.new(
      type: InvoiceEventPaymentMethod::APPLE_PAY
    ),
    transaction_id: 78,
    parent_invoice_number: 36,
    remaining_prepayment_amount: 'remaining_prepayment_amount6',
    prepayment: false,
    external: false
  )
)
```

