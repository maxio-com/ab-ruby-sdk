
# Subscription Component

## Structure

`SubscriptionComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `kind` | `String` | Optional | - |
| `unit_name` | `String` | Optional | - |
| `enabled` | `TrueClass \| FalseClass` | Optional | (for on/off components) indicates if the component is enabled for the subscription |
| `unit_balance` | `Integer` | Optional | - |
| `currency` | `String` | Optional | - |
| `allocated_quantity` | `Integer` | Optional | For Quantity-based components: The current allocation for the component on the given subscription. For On/Off components: Use 1 for on. Use 0 for off. |
| `pricing_scheme` | `String` | Optional | - |
| `component_id` | `Integer` | Optional | - |
| `component_handle` | `String` | Optional | - |
| `subscription_id` | `Integer` | Optional | - |
| `recurring` | `TrueClass \| FalseClass` | Optional | - |
| `upgrade_charge` | `String` | Optional | - |
| `downgrade_credit` | `String` | Optional | - |
| `archived_at` | `String` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |
| `price_point_handle` | `String` | Optional | - |
| `price_point_type` | [Price Point Type](../../doc/models/price-point-type.md) \| nil | Optional | This is a container for one-of cases. |
| `price_point_name` | `String` | Optional | - |
| `product_family_id` | `Integer` | Optional | - |
| `product_family_handle` | `String` | Optional | - |
| `created_at` | `String` | Optional | - |
| `updated_at` | `String` | Optional | - |
| `use_site_exchange_rate` | `TrueClass \| FalseClass` | Optional | - |
| `description` | `String` | Optional | - |
| `allow_fractional_quantities` | `TrueClass \| FalseClass` | Optional | - |
| `subscription` | [`SubscriptionComponentSubscription`](../../doc/models/subscription-component-subscription.md) | Optional | An optional object, will be returned if provided `include=subscription` query param. |
| `display_on_hosted_page` | `TrueClass \| FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "id": 20,
  "name": "name8",
  "kind": "kind6",
  "unit_name": "unit_name0",
  "enabled": false
}
```

