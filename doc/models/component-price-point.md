
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
| `pricing_scheme` | [`PricingScheme`](../../doc/models/pricing-scheme.md) | Optional | The identifier for the pricing scheme. See [Product Components](https://help.chargify.com/products/product-components.html) for an overview of pricing schemes. |
| `component_id` | `Integer` | Optional | - |
| `handle` | `String` | Optional | - |
| `archived_at` | `DateTime` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `prices` | [`Array<ComponentPrice>`](../../doc/models/component-price.md) | Optional | - |
| `use_site_exchange_rate` | `TrueClass \| FalseClass` | Optional | Whether to use the site level exchange rate or define your own prices for each currency if you have multiple currencies defined on the site.<br>**Default**: `true` |
| `subscription_id` | `Integer` | Optional | (only used for Custom Pricing - ie. when the price point's type is `custom`) The id of the subscription that the custom price point is for. |
| `tax_included` | `TrueClass \| FalseClass` | Optional | - |
| `interval` | `Integer` | Optional | The numerical interval. i.e. an interval of ‘30’ coupled with an interval_unit of day would mean this component price point would renew every 30 days. This property is only available for sites with Multifrequency enabled. |
| `interval_unit` | [Interval Unit](../../doc/models/interval-unit.md) \| nil | Optional | This is a container for one-of cases. |
| `currency_prices` | [`Array<ComponentCurrencyPrice>`](../../doc/models/component-currency-price.md) | Optional | An array of currency pricing data is available when multiple currencies are defined for the site. It varies based on the use_site_exchange_rate setting for the price point. This parameter is present only in the response of read endpoints, after including the appropriate query parameter. |

## Example (as JSON)

```json
{
  "use_site_exchange_rate": true,
  "id": 190,
  "type": "custom",
  "default": false,
  "name": "name2",
  "pricing_scheme": "stairstep"
}
```

