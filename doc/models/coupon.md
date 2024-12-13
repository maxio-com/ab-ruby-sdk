
# Coupon

## Structure

`Coupon`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `code` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `amount` | `Float` | Optional | - |
| `amount_in_cents` | `Integer` | Optional | - |
| `product_family_id` | `Integer` | Optional | - |
| `product_family_name` | `String` | Optional | - |
| `start_date` | `DateTime` | Optional | - |
| `end_date` | `DateTime` | Optional | After the given time, this coupon code will be invalid for new signups. Recurring discounts started before this date will continue to recur even after this date. |
| `percentage` | `String` | Optional | - |
| `recurring` | `TrueClass \| FalseClass` | Optional | - |
| `recurring_scheme` | [`RecurringScheme`](../../doc/models/recurring-scheme.md) | Optional | - |
| `duration_period_count` | `Integer` | Optional | - |
| `duration_interval` | `Integer` | Optional | - |
| `duration_interval_unit` | `String` | Optional | - |
| `duration_interval_span` | `String` | Optional | - |
| `allow_negative_balance` | `TrueClass \| FalseClass` | Optional | If set to true, discount is not limited (credits will carry forward to next billing). |
| `archived_at` | `DateTime` | Optional | - |
| `conversion_limit` | `String` | Optional | - |
| `stackable` | `TrueClass \| FalseClass` | Optional | A stackable coupon can be combined with other coupons on a Subscription. |
| `compounding_strategy` | [`CompoundingStrategy`](../../doc/models/compounding-strategy.md) | Optional | Applicable only to stackable coupons. For `compound`, Percentage-based discounts will be calculated against the remaining price, after prior discounts have been calculated. For `full-price`, Percentage-based discounts will always be calculated against the original item price, before other discounts are applied. |
| `use_site_exchange_rate` | `TrueClass \| FalseClass` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `discount_type` | [`DiscountType`](../../doc/models/discount-type.md) | Optional | - |
| `exclude_mid_period_allocations` | `TrueClass \| FalseClass` | Optional | - |
| `apply_on_cancel_at_end_of_period` | `TrueClass \| FalseClass` | Optional | - |
| `apply_on_subscription_expiration` | `TrueClass \| FalseClass` | Optional | - |
| `coupon_restrictions` | [`Array<CouponRestriction>`](../../doc/models/coupon-restriction.md) | Optional | - |
| `currency_prices` | [`Array<CouponCurrency>`](../../doc/models/coupon-currency.md) | Optional | Returned in read, find, and list endpoints if the query parameter is provided. |

## Example (as JSON)

```json
{
  "id": 22,
  "name": "name2",
  "code": "code0",
  "description": "description2",
  "amount": 62.64
}
```

