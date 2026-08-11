
# Failed Payment Event

## Structure

`FailedPaymentEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `timestamp` | `DateTime` | Required | - |
| `invoice` | [`Invoice`](../../doc/models/invoice.md) | Required | - |
| `event_type` | [`InvoiceEventType`](../../doc/models/invoice-event-type.md) | Required | **Default**: `InvoiceEventType::FAILED_PAYMENT` |
| `event_data` | [`FailedPaymentEventData`](../../doc/models/failed-payment-event-data.md) | Required | Example schema for an `failed_payment` event |

## Example

```ruby
failed_payment_event = FailedPaymentEvent.new(
  id: 140,
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
  event_type: InvoiceEventType::FAILED_PAYMENT,
  event_data: FailedPaymentEventData.new(
    amount_in_cents: 220,
    applied_amount: 194,
    payment_method: InvoicePaymentMethodType::CASH,
    transaction_id: 78,
    memo: 'memo0'
  )
)
```

