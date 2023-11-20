
# Component Price Point

## Structure

`ComponentPricePoint`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `type` | [`PricePointType`](../../doc/models/price-point-type.md) | Optional | Price point type. We expose the following types:<br><br>1. **default**: a price point that is marked as a default price for a certain product.<br>2. **custom**: a custom price point.<br>3. **catalog**: a price point that is **not** marked as a default price for a certain product and is **not** a custom one. |
| `default` | `TrueClass \| FalseClass` | Optional | Note: Refer to type attribute instead |
| `name` | `String` | Optional | - |
| `pricing_scheme` | `String` | Optional | - |
| `component_id` | `Integer` | Optional | - |
| `handle` | `String` | Optional | - |
| `archived_at` | `String` | Optional | - |
| `created_at` | `String` | Optional | - |
| `updated_at` | `String` | Optional | - |
| `prices` | [`Array<ComponentPricePointPrice>`](../../doc/models/component-price-point-price.md) | Optional | - |
| `use_site_exchange_rate` | `TrueClass \| FalseClass` | Optional | Whether to use the site level exchange rate or define your own prices for each currency if you have multiple currencies defined on the site.<br>**Default**: `true` |
| `subscription_id` | `Integer` | Optional | (only used for Custom Pricing - ie. when the price point's type is `custom`) The id of the subscription that the custom price point is for. |
| `tax_included` | `TrueClass \| FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "use_site_exchange_rate": true,
  "id": 190,
  "type": "custom",
  "default": false,
  "name": "name2",
  "pricing_scheme": "pricing_scheme6"
}
```

