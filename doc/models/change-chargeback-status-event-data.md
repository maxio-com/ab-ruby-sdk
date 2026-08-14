
# Change Chargeback Status Event Data

Example schema for an `change_chargeback_status` event

## Structure

`ChangeChargebackStatusEventData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `chargeback_status` | [`ChargebackStatus`](../../doc/models/chargeback-status.md) | Required | - |

## Example

```ruby
change_chargeback_status_event_data = ChangeChargebackStatusEventData.new(
  chargeback_status: ChargebackStatus::OPEN
)
```

