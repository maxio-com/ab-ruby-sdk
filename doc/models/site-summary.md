
# Site Summary

## Structure

`SiteSummary`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `seller_name` | `String` | Optional | - |
| `site_name` | `String` | Optional | - |
| `site_id` | `Integer` | Optional | - |
| `site_currency` | `String` | Optional | - |
| `stats` | [`SiteStatistics`](../../doc/models/site-statistics.md) | Optional | - |

## Example

```ruby
site_summary = SiteSummary.new(
  seller_name: 'seller_name8',
  site_name: 'site_name4',
  site_id: 170,
  site_currency: 'site_currency2',
  stats: SiteStatistics.new(
    total_subscriptions: 110,
    subscriptions_today: 228,
    total_revenue: 'total_revenue6',
    revenue_today: 'revenue_today4',
    revenue_this_month: 'revenue_this_month4'
  )
)
```

