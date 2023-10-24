
# Product Price Point

## Structure

`ProductPricePoint`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `handle` | `String` | Optional | - |
| `price_in_cents` | `Integer` | Optional | - |
| `interval` | `Integer` | Optional | - |
| `interval_unit` | `String` | Optional | - |
| `trial_price_in_cents` | `Integer` | Optional | - |
| `trial_interval` | `Integer` | Optional | - |
| `trial_interval_unit` | `String` | Optional | - |
| `trial_type` | `String` | Optional | - |
| `introductory_offer` | `TrueClass \| FalseClass` | Optional | reserved for future use |
| `initial_charge_in_cents` | `Integer` | Optional | - |
| `initial_charge_after_trial` | `TrueClass \| FalseClass` | Optional | - |
| `expiration_interval` | `Integer` | Optional | - |
| `expiration_interval_unit` | `String` | Optional | - |
| `product_id` | `Integer` | Optional | - |
| `archived_at` | `String` | Optional | - |
| `created_at` | `String` | Optional | - |
| `updated_at` | `String` | Optional | - |
| `use_site_exchange_rate` | `TrueClass \| FalseClass` | Optional | Whether or not to use the site's exchange rate or define your own pricing when your site has multiple currencies defined. |
| `type` | [`PricePointType`](../../doc/models/price-point-type.md) | Optional | Price point type. We expose the following types:<br><br>1. **default**: a price point that is marked as a default price for a certain product.<br>2. **custom**: a custom price point.<br>3. **catalog**: a price point that is **not** marked as a default price for a certain product and is **not** a custom one. |
| `tax_included` | `TrueClass \| FalseClass` | Optional | - |
| `subscription_id` | `Integer` | Optional | - |

## Example (as JSON)

```json
{
  "id": 196,
  "name": "name6",
  "handle": "handle2",
  "price_in_cents": 248,
  "interval": 8
}
```

