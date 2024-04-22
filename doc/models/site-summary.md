
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

## Example (as JSON)

```json
{
  "seller_name": "seller_name0",
  "site_name": "site_name4",
  "site_id": 218,
  "site_currency": "site_currency6",
  "stats": {
    "total_subscriptions": 110,
    "subscriptions_today": 228,
    "total_revenue": "total_revenue6",
    "revenue_today": "revenue_today4",
    "revenue_this_month": "revenue_this_month4",
    "revenue_this_year": "revenue_this_year0",
    "total_canceled_subscriptions": 70,
    "total_active_subscriptions": 114,
    "total_past_due_subscriptions": 136,
    "total_unpaid_subscriptions": 236,
    "total_dunning_subscriptions": 168
  }
}
```

