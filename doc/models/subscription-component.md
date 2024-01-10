
# Subscription Component

## Structure

`SubscriptionComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `kind` | [`ComponentKind`](../../doc/models/component-kind.md) | Optional | A handle for the component type |
| `unit_name` | `String` | Optional | - |
| `enabled` | `TrueClass \| FalseClass` | Optional | (for on/off components) indicates if the component is enabled for the subscription |
| `unit_balance` | `Integer` | Optional | - |
| `currency` | `String` | Optional | - |
| `allocated_quantity` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `pricing_scheme` | [Pricing Scheme](../../doc/models/pricing-scheme.md) \| nil | Optional | This is a container for one-of cases. |
| `component_id` | `Integer` | Optional | - |
| `component_handle` | `String` | Optional | - |
| `subscription_id` | `Integer` | Optional | - |
| `recurring` | `TrueClass \| FalseClass` | Optional | - |
| `upgrade_charge` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided.<br>Available values: `full`, `prorated`, `none`. |
| `downgrade_credit` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided.<br>Available values: `full`, `prorated`, `none`. |
| `archived_at` | `String` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |
| `price_point_handle` | `String` | Optional | - |
| `price_point_type` | [Price Point Type](../../doc/models/price-point-type.md) \| nil | Optional | This is a container for one-of cases. |
| `price_point_name` | `String` | Optional | - |
| `product_family_id` | `Integer` | Optional | - |
| `product_family_handle` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `use_site_exchange_rate` | `TrueClass \| FalseClass` | Optional | - |
| `description` | `String` | Optional | - |
| `allow_fractional_quantities` | `TrueClass \| FalseClass` | Optional | - |
| `subscription` | [`SubscriptionComponentSubscription`](../../doc/models/subscription-component-subscription.md) | Optional | An optional object, will be returned if provided `include=subscription` query param. |
| `display_on_hosted_page` | `TrueClass \| FalseClass` | Optional | - |
| `interval` | `Integer` | Optional | The numerical interval. i.e. an interval of '30' coupled with an interval_unit of day would mean this component price point would renew every 30 days. This property is only available for sites with Multifrequency enabled. |
| `interval_unit` | [`IntervalUnit`](../../doc/models/interval-unit.md) | Optional | A string representing the interval unit for this component price point, either month or day. This property is only available for sites with Multifrequency enabled. |

## Example (as JSON)

```json
{
  "id": 20,
  "name": "name8",
  "kind": "quantity_based_component",
  "unit_name": "unit_name0",
  "enabled": false
}
```

