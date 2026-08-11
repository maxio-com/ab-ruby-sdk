
# Change Chargeback Status Event

## Structure

`ChangeChargebackStatusEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `timestamp` | `DateTime` | Required | - |
| `invoice` | [`Invoice`](../../doc/models/invoice.md) | Required | - |
| `event_type` | [`InvoiceEventType`](../../doc/models/invoice-event-type.md) | Required | **Default**: `InvoiceEventType::CHANGE_CHARGEBACK_STATUS` |
| `event_data` | [`ChangeChargebackStatusEventData`](../../doc/models/change-chargeback-status-event-data.md) | Required | Example schema for an `change_chargeback_status` event |

## Example

```ruby
change_chargeback_status_event = ChangeChargebackStatusEvent.new(
  id: 114,
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
  event_type: InvoiceEventType::CHANGE_CHARGEBACK_STATUS,
  event_data: ChangeChargebackStatusEventData.new(
    chargeback_status: ChargebackStatus::WON
  )
)
```

