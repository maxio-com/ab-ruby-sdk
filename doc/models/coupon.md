
# Coupon

## Structure

`Coupon`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Float` | Optional | - |
| `name` | `String` | Optional | - |
| `code` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `amount` | `Float` | Optional | - |
| `amount_in_cents` | `Integer` | Optional | - |
| `product_family_id` | `Integer` | Optional | - |
| `product_family_name` | `String` | Optional | - |
| `start_date` | `String` | Optional | - |
| `end_date` | `String` | Optional | - |
| `percentage` | `Float` | Optional | - |
| `recurring` | `TrueClass \| FalseClass` | Optional | - |
| `recurring_scheme` | [`RecurringScheme`](../../doc/models/recurring-scheme.md) | Optional | - |
| `duration_period_count` | `Integer` | Optional | - |
| `duration_interval` | `Integer` | Optional | - |
| `duration_interval_unit` | `String` | Optional | - |
| `duration_interval_span` | `String` | Optional | - |
| `allow_negative_balance` | `TrueClass \| FalseClass` | Optional | - |
| `archived_at` | `String` | Optional | - |
| `conversion_limit` | `String` | Optional | - |
| `stackable` | `TrueClass \| FalseClass` | Optional | - |
| `compounding_strategy` | [Compounding Strategy](../../doc/models/compounding-strategy.md) \| nil | Optional | This is a container for any-of cases. |
| `use_site_exchange_rate` | `TrueClass \| FalseClass` | Optional | - |
| `created_at` | `String` | Optional | - |
| `updated_at` | `String` | Optional | - |
| `discount_type` | [`DiscountType`](../../doc/models/discount-type.md) | Optional | - |
| `exclude_mid_period_allocations` | `TrueClass \| FalseClass` | Optional | - |
| `apply_on_cancel_at_end_of_period` | `TrueClass \| FalseClass` | Optional | - |
| `coupon_restrictions` | [`Array<CouponRestriction>`](../../doc/models/coupon-restriction.md) | Optional | - |

## Example (as JSON)

```json
{
  "id": 179.42,
  "name": "name2",
  "code": "code0",
  "description": "description2",
  "amount": 62.64
}
```

