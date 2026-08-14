
# Prepaid Usage Component

## Structure

`PrepaidUsageComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | A name for this component that is suitable for showing customers and displaying on billing statements, e.g., "Minutes". |
| `unit_name` | `String` | Required | The name of the unit of measurement for the component. It should be singular since it will be automatically pluralized when necessary. e.g., “message”, which may then be shown as “5 messages” on a subscription’s component line-item |
| `description` | `String` | Optional | A description for the component that will be displayed to the user on the hosted signup page. |
| `handle` | `String` | Optional | A unique identifier for your use that can be used to retrieve this component in subsequent requests. Must start with a letter or number and may only contain lowercase letters, numbers, or the characters '.', ':', '-', or '_'.<br><br>**Constraints**: *Pattern*: `^[a-z0-9][a-z0-9\-_:.]*$` |
| `taxable` | `TrueClass \| FalseClass` | Optional | Boolean flag describing whether a component is taxable or not. |
| `pricing_scheme` | [`PricingScheme`](../../doc/models/pricing-scheme.md) | Required | The identifier for the pricing scheme. See [Product Components](https://help.chargify.com/products/product-components.html) for an overview of pricing schemes. |
| `prices` | [`Array[Price]`](../../doc/models/price.md) | Optional | (Not required for ‘per_unit’ pricing schemes) One or more price brackets. See [Price Bracket Rules](https://maxio.zendesk.com/hc/en-us/articles/24261149166733-Component-Pricing-Schemes#price-bracket-rules) for an overview of how price brackets work for different pricing schemes. |
| `upgrade_charge` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided. |
| `downgrade_credit` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided. |
| `price_points` | [`Array[CreatePrepaidUsageComponentPricePoint]`](../../doc/models/create-prepaid-usage-component-price-point.md) | Optional | - |
| `unit_price` | String \| Float \| nil | Optional | This is a container for one-of cases. |
| `tax_code` | `String` | Optional | A string representing the tax code related to the component type. This is especially important when using AvaTax to tax based on locale. This attribute has a max length of 25 characters. |
| `hide_date_range_on_invoice` | `TrueClass \| FalseClass` | Optional | (Only available on Relationship Invoicing sites) Boolean flag describing if the service date range should show for the component on generated invoices. |
| `overage_pricing` | [`OveragePricing`](../../doc/models/overage-pricing.md) | Required | - |
| `rollover_prepaid_remainder` | `TrueClass \| FalseClass` | Optional | Boolean which controls whether or not remaining units should be rolled over to the next period. |
| `renew_prepaid_allocation` | `TrueClass \| FalseClass` | Optional | Boolean which controls whether or not the allocated quantity should be renewed at the beginning of each period. |
| `expiration_interval` | `Float` | Optional | (only for prepaid usage components where rollover_prepaid_remainder is true) The number of `expiration_interval_unit`s after which rollover amounts should expire |
| `expiration_interval_unit` | [`ExpirationIntervalUnit`](../../doc/models/expiration-interval-unit.md) | Optional | - |
| `display_on_hosted_page` | `TrueClass \| FalseClass` | Optional | - |
| `allow_fractional_quantities` | `TrueClass \| FalseClass` | Optional | - |
| `public_signup_page_ids` | `Array[Integer]` | Optional | - |
| `unspsc_code` | `String` | Optional | (Optional) Custom UNSPSC commodity code for Level 3/CEDP payment data. When set, this value is sent as the commodity code on invoice line items for this component instead of the default derived from item_category. |

## Example

```ruby
prepaid_usage_component = PrepaidUsageComponent.new(
  name: 'name2',
  unit_name: 'unit_name4',
  pricing_scheme: PricingScheme::PER_UNIT,
  overage_pricing: OveragePricing.new(
    pricing_scheme: PricingScheme::STAIRSTEP,
    prices: [
      Price.new(
        starting_quantity: 242,
        unit_price: 23.26,
        ending_quantity: 40
      )
    ]
  ),
  description: 'description2',
  handle: 'handle8',
  taxable: false,
  prices: [
    Price.new(
      starting_quantity: 242,
      unit_price: 23.26,
      ending_quantity: 40
    )
  ],
  upgrade_charge: CreditType::FULL
)
```

