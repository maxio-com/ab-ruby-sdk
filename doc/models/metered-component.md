
# Metered Component

## Structure

`MeteredComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | A name for this component that is suitable for showing customers and displaying on billing statements, ie. "Minutes". |
| `unit_name` | `String` | Required | The name of the unit of measurement for the component. It should be singular since it will be automatically pluralized when necessary. i.e. “message”, which may then be shown as “5 messages” on a subscription’s component line-item |
| `description` | `String` | Optional | A description for the component that will be displayed to the user on the hosted signup page. |
| `handle` | `String` | Optional | A unique identifier for your use that can be used to retrieve this component is subsequent requests.  Must start with a letter or number and may only contain lowercase letters, numbers, or the characters '.', ':', '-', or '_'.<br>**Constraints**: *Pattern*: `^[a-z0-9][a-z0-9\-_:.]*$` |
| `taxable` | `TrueClass \| FalseClass` | Optional | Boolean flag describing whether a component is taxable or not. |
| `pricing_scheme` | [Pricing Scheme](../../doc/models/pricing-scheme.md) | Required | This is a container for one-of cases. |
| `prices` | [`Array<Price>`](../../doc/models/price.md) | Optional | (Not required for ‘per_unit’ pricing schemes) One or more price brackets. See [Price Bracket Rules](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405020625677#price-bracket-rules) for an overview of how price brackets work for different pricing schemes. |
| `upgrade_charge` | `String` | Optional | - |
| `downgrade_credit` | `String` | Optional | - |
| `price_points` | [`Array<ComponentPricePointItem>`](../../doc/models/component-price-point-item.md) | Optional | - |
| `unit_price` | String \| Float \| nil | Optional | This is a container for one-of cases. |
| `tax_code` | `String` | Optional | A string representing the tax code related to the component type. This is especially important when using the Avalara service to tax based on locale. This attribute has a max length of 10 characters. |
| `hide_date_range_on_invoice` | `TrueClass \| FalseClass` | Optional | (Only available on Relationship Invoicing sites) Boolean flag describing if the service date range should show for the component on generated invoices. |
| `price_in_cents` | `String` | Optional | deprecated May 2011 - use unit_price instead |
| `display_on_hosted_page` | `TrueClass \| FalseClass` | Optional | - |
| `allow_fractional_quantities` | `TrueClass \| FalseClass` | Optional | - |
| `public_signup_page_ids` | `Array<Integer>` | Optional | - |

## Example (as JSON)

```json
{
  "name": "name4",
  "unit_name": "unit_name6",
  "description": "description6",
  "handle": "handle0",
  "taxable": false,
  "pricing_scheme": "volume",
  "prices": [
    {
      "starting_quantity": 242,
      "ending_quantity": 40,
      "unit_price": 23.26
    }
  ],
  "upgrade_charge": "upgrade_charge4"
}
```

