
# Subscription Filter

Nested filter used for List Subscription Components For Site Filter

## Structure

`SubscriptionFilter`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `states` | [`Array[SubscriptionStateFilter]`](../../doc/models/subscription-state-filter.md) | Optional | Allows fetching components allocations that belong to the subscription with matching states based on provided values. To use this filter you also have to include the following param in the request `include=subscription`. Use in query `filter[subscription][states]=active,canceled&include=subscription`.<br><br>**Constraints**: *Minimum Items*: `1` |
| `date_field` | [`SubscriptionListDateField`](../../doc/models/subscription-list-date-field.md) | Optional | The type of filter you'd like to apply to your search. To use this filter you also have to include the following param in the request `include=subscription`. |
| `start_date` | `Date` | Optional | The start date (format YYYY-MM-DD) with which to filter the date_field. Returns components that belong to the subscription with a timestamp at or after midnight (12:00:00 AM) in your site’s time zone on the date specified. To use this filter you also have to include the following param in the request `include=subscription`. |
| `end_date` | `Date` | Optional | The end date (format YYYY-MM-DD) with which to filter the date_field. Returns components that belong to the subscription with a timestamp up to and including 11:59:59PM in your site’s time zone on the date specified. To use this filter you also have to include the following param in the request `include=subscription`. |
| `start_datetime` | `DateTime` | Optional | The start date and time (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns components that belong to the subscription with a timestamp at or after exact time provided in query. You can specify timezone in query - otherwise your site''s time zone will be used. If provided, this parameter will be used instead of start_date. To use this filter you also have to include the following param in the request `include=subscription`. |
| `end_datetime` | `DateTime` | Optional | The end date and time (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns components that belong to the subscription with a timestamp at or before exact time provided in query. You can specify timezone in query - otherwise your site''s time zone will be used. If provided, this parameter will be used instead of end_date. To use this filter you also have to include the following param in the request `include=subscription`. |

## Example

```ruby
subscription_filter = SubscriptionFilter.new(
  states: [
    SubscriptionStateFilter::ACTIVE,
    SubscriptionStateFilter::CANCELED
  ],
  date_field: SubscriptionListDateField::UPDATED_AT,
  start_date: Date.iso8601('2024-01-17'),
  end_date: Date.iso8601('2024-01-31'),
  start_datetime: DateTimeHelper.from_rfc3339('2024-01-17T09:15:30+00:00'),
  end_datetime: DateTimeHelper.from_rfc3339('2024-01-17T17:20:06Z')
)
```

