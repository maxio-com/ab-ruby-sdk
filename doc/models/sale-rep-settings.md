
# Sale Rep Settings

## Structure

`SaleRepSettings`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_name` | `String` | Optional | - |
| `subscription_id` | `Integer` | Optional | - |
| `site_link` | `String` | Optional | - |
| `site_name` | `String` | Optional | - |
| `subscription_mrr` | `String` | Optional | - |
| `sales_rep_id` | `Integer` | Optional | - |
| `sales_rep_name` | `String` | Optional | - |

## Example

```ruby
sale_rep_settings = SaleRepSettings.new(
  customer_name: 'customer_name4',
  subscription_id: 168,
  site_link: 'site_link0',
  site_name: 'site_name6',
  subscription_mrr: 'subscription_mrr2'
)
```

