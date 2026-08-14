
# Scheduled Renewal Configurations Response

## Structure

`ScheduledRenewalConfigurationsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `scheduled_renewal_configurations` | [`Array[ScheduledRenewalConfiguration]`](../../doc/models/scheduled-renewal-configuration.md) | Optional | - |

## Example

```ruby
scheduled_renewal_configurations_response = ScheduledRenewalConfigurationsResponse.new(
  scheduled_renewal_configurations: [
    ScheduledRenewalConfiguration.new(
      id: 122,
      site_id: 48,
      subscription_id: 232,
      starts_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      ends_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
    ),
    ScheduledRenewalConfiguration.new(
      id: 122,
      site_id: 48,
      subscription_id: 232,
      starts_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
      ends_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
    )
  ]
)
```

