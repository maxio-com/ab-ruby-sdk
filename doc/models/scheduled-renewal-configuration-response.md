
# Scheduled Renewal Configuration Response

## Structure

`ScheduledRenewalConfigurationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `scheduled_renewal_configuration` | [`ScheduledRenewalConfiguration`](../../doc/models/scheduled-renewal-configuration.md) | Optional | - |

## Example

```ruby
scheduled_renewal_configuration_response = ScheduledRenewalConfigurationResponse.new(
  scheduled_renewal_configuration: ScheduledRenewalConfiguration.new(
    id: 134,
    site_id: 60,
    subscription_id: 244,
    starts_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    ends_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  )
)
```

