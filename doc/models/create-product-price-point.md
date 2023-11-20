
# Create Product Price Point

## Structure

`CreateProductPricePoint`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `handle` | `String` | Optional | - |
| `price_in_cents` | `Integer` | Required | - |
| `interval` | `Integer` | Required | - |
| `interval_unit` | `String` | Required | - |
| `trial_price_in_cents` | `Integer` | Optional | - |
| `trial_interval` | `Integer` | Optional | - |
| `trial_interval_unit` | `String` | Optional | - |
| `trial_type` | `String` | Optional | - |
| `initial_charge_in_cents` | `Integer` | Optional | - |
| `initial_charge_after_trial` | `TrueClass \| FalseClass` | Optional | - |
| `expiration_interval` | `Integer` | Optional | - |
| `expiration_interval_unit` | `String` | Optional | - |
| `use_site_exchange_rate` | `TrueClass \| FalseClass` | Optional | Whether or not to use the site's exchange rate or define your own pricing when your site has multiple currencies defined.<br>**Default**: `true` |

## Example (as JSON)

```json
{
  "name": "name6",
  "price_in_cents": 216,
  "interval": 200,
  "interval_unit": "interval_unit6",
  "use_site_exchange_rate": true,
  "handle": "handle2",
  "trial_price_in_cents": 48,
  "trial_interval": 102,
  "trial_interval_unit": "trial_interval_unit0",
  "trial_type": "trial_type0"
}
```

