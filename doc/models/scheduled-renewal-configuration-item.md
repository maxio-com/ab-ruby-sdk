
# Scheduled Renewal Configuration Item

## Structure

`ScheduledRenewalConfigurationItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `subscription_id` | `Integer` | Optional | - |
| `subscription_renewal_configuration_id` | `Integer` | Optional | - |
| `item_id` | `Integer` | Optional | - |
| `item_type` | `String` | Optional | - |
| `item_subclass` | `String` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |
| `price_point_type` | `String` | Optional | - |
| `quantity` | `Integer` | Optional | - |
| `decimal_quantity` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |

## Example

```ruby
scheduled_renewal_configuration_item = ScheduledRenewalConfigurationItem.new(
  id: 98,
  subscription_id: 208,
  subscription_renewal_configuration_id: 108,
  item_id: 246,
  item_type: 'item_type2'
)
```

