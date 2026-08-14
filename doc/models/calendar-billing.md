
# Calendar Billing

(Optional). Cannot be used when also specifying next_billing_at.

## Structure

`CalendarBilling`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `snap_day` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `calendar_billing_first_charge` | [`FirstChargeType`](../../doc/models/first-charge-type.md) | Optional | - |

## Example

```ruby
calendar_billing = CalendarBilling.new(
  snap_day: 170,
  calendar_billing_first_charge: FirstChargeType::PRORATED
)
```

