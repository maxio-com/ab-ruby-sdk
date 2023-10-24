
# Component

## Structure

`Component`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The unique ID assigned to the component by Chargify. This ID can be used to fetch the component from the API. |
| `name` | `String` | Optional | The name of the Component, suitable for display on statements. i.e. Text Messages. |
| `handle` | `String` | Optional | The component API handle |
| `pricing_scheme` | `String` | Optional | The handle for the pricing scheme. Available options: per_unit, volume, tiered, stairstep. See [Price Bracket Rules](https://chargify.zendesk.com/hc/en-us/articles/4407755865883#price-bracket-rules) for an overview of pricing schemes. |
| `unit_name` | `String` | Optional | The name of the unit that the component’s usage is measured in. i.e. message |
| `unit_price` | `String` | Optional | The amount the customer will be charged per unit. This field is only populated for ‘per_unit’ pricing schemes, otherwise it may be null. |
| `product_family_id` | `Integer` | Optional | The id of the Product Family to which the Component belongs |
| `product_family_name` | `String` | Optional | The name of the Product Family to which the Component belongs |
| `price_per_unit_in_cents` | `Integer` | Optional | deprecated - use unit_price instead |
| `kind` | [`ComponentKind`](../../doc/models/component-kind.md) | Optional | A handle for the component type |
| `archived` | `TrueClass \| FalseClass` | Optional | Boolean flag describing whether a component is archived or not. |
| `taxable` | `TrueClass \| FalseClass` | Optional | Boolean flag describing whether a component is taxable or not. |
| `description` | `String` | Optional | The description of the component. |
| `default_price_point_id` | `Integer` | Optional | - |
| `prices` | [`Array<ComponentPrice>`](../../doc/models/component-price.md) | Optional | An array of price brackets. If the component uses the ‘per_unit’ pricing scheme, this array will be empty. |
| `price_point_count` | `Integer` | Optional | Count for the number of price points associated with the component |
| `price_points_url` | `String` | Optional | URL that points to the location to read the existing price points via GET request |
| `default_price_point_name` | `String` | Optional | - |
| `tax_code` | `String` | Optional | A string representing the tax code related to the component type. This is especially important when using the Avalara service to tax based on locale. This attribute has a max length of 10 characters. |
| `recurring` | `TrueClass \| FalseClass` | Optional | - |
| `upgrade_charge` | `String` | Optional | - |
| `downgrade_credit` | `String` | Optional | - |
| `created_at` | `String` | Optional | Timestamp indicating when this component was created |
| `updated_at` | `String` | Optional | Timestamp indicating when this component was updated |
| `archived_at` | `String` | Optional | Timestamp indicating when this component was archived |
| `hide_date_range_on_invoice` | `TrueClass \| FalseClass` | Optional | (Only available on Relationship Invoicing sites) Boolean flag describing if the service date range should show for the component on generated invoices. |
| `allow_fractional_quantities` | `TrueClass \| FalseClass` | Optional | - |
| `item_category` | [`ItemCategory`](../../doc/models/item-category.md) | Optional | One of the following: Business Software, Consumer Software, Digital Services, Physical Goods, Other |
| `use_site_exchange_rate` | `TrueClass \| FalseClass` | Optional | - |
| `accounting_code` | `String` | Optional | E.g. Internal ID or SKU Number |
| `event_based_billing_metric_id` | `Integer` | Optional | (Only for Event Based Components) This is an ID of a metric attached to the component. This metric is used to bill upon collected events. |

## Example (as JSON)

```json
{
  "item_category": "Business Software",
  "id": 24,
  "name": "name2",
  "handle": "handle8",
  "pricing_scheme": "pricing_scheme6",
  "unit_name": "unit_name4"
}
```

