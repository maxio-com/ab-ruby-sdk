
# Subscription Custom Price

(Optional) Used in place of `product_price_point_id` to define a custom price point unique to the subscription

## Structure

`SubscriptionCustomPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | (Optional) |
| `handle` | `String` | Optional | (Optional) |
| `price_in_cents` | String \| Integer | Required | This is a container for one-of cases. |
| `interval` | String \| Integer | Required | This is a container for one-of cases. |
| `interval_unit` | [`IntervalUnit`](../../doc/models/interval-unit.md) | Required | Required if using `custom_price` attribute. |
| `trial_price_in_cents` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `trial_interval` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `trial_interval_unit` | [`IntervalUnit`](../../doc/models/interval-unit.md) | Optional | (Optional) |
| `initial_charge_in_cents` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `initial_charge_after_trial` | `TrueClass \| FalseClass` | Optional | (Optional) |
| `expiration_interval` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `expiration_interval_unit` | [`ExpirationIntervalUnit`](../../doc/models/expiration-interval-unit.md) | Optional | (Optional) |
| `tax_included` | `TrueClass \| FalseClass` | Optional | (Optional) |

## Example (as JSON)

```json
{
  "name": "name4",
  "handle": "handle0",
  "price_in_cents": "String3",
  "interval": "String3",
  "interval_unit": "day",
  "trial_price_in_cents": "String3",
  "trial_interval": "String5",
  "trial_interval_unit": "day"
}
```

