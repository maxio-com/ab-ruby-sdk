
# Scheduled Renewal Configuration

## Structure

`ScheduledRenewalConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | ID of the renewal. |
| `site_id` | `Integer` | Optional | ID of the site to which the renewal belongs. |
| `subscription_id` | `Integer` | Optional | The id of the subscription. |
| `starts_at` | `DateTime` | Optional | - |
| `ends_at` | `DateTime` | Optional | - |
| `lock_in_at` | `DateTime` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `status` | `String` | Optional | - |
| `scheduled_renewal_configuration_items` | [`Array[ScheduledRenewalConfigurationItem]`](../../doc/models/scheduled-renewal-configuration-item.md) | Optional | - |
| `contract` | [`Contract`](../../doc/models/contract.md) | Optional | Contract linked to the scheduled renewal configuration. |

## Example (as JSON)

```json
{
  "id": 152,
  "site_id": 78,
  "subscription_id": 6,
  "starts_at": "2016-03-13T12:52:32.123Z",
  "ends_at": "2016-03-13T12:52:32.123Z"
}
```

