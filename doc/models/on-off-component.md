
# On Off Component

## Structure

`OnOffComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | A name for this component that is suitable for showing customers and displaying on billing statements, e.g., "Minutes". |
| `description` | `String` | Optional | A description for the component that will be displayed to the user on the hosted signup page. |
| `handle` | `String` | Optional | A unique identifier for your use that can be used to retrieve this component in subsequent requests. Must start with a letter or number and may only contain lowercase letters, numbers, or the characters '.', ':', '-', or '_'.<br><br>**Constraints**: *Pattern*: `^[a-z0-9][a-z0-9\-_:.]*$` |
| `taxable` | `TrueClass \| FalseClass` | Optional | Boolean flag describing whether a component is taxable or not. |
| `upgrade_charge` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided. |
| `downgrade_credit` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided. |
| `price_points` | [`Array[ComponentPricePointItem]`](../../doc/models/component-price-point-item.md) | Optional | - |
| `unit_price` | String \| Float | Required | This is a container for one-of cases. |
| `tax_code` | `String` | Optional | A string representing the tax code related to the component type. This is especially important when using AvaTax to tax based on locale. This attribute has a max length of 25 characters. |
| `hide_date_range_on_invoice` | `TrueClass \| FalseClass` | Optional | (Only available on Relationship Invoicing sites) Boolean flag describing if the service date range should show for the component on generated invoices. |
| `display_on_hosted_page` | `TrueClass \| FalseClass` | Optional | - |
| `allow_fractional_quantities` | `TrueClass \| FalseClass` | Optional | - |
| `public_signup_page_ids` | `Array[Integer]` | Optional | - |
| `interval` | `Integer` | Optional | The numerical interval. e.g., an interval of ‘30’ coupled with an interval_unit of day would mean this component's default price point would renew every 30 days. This property is only available for sites with Multifrequency enabled. |
| `interval_unit` | [`IntervalUnit`](../../doc/models/interval-unit.md) | Optional | A string representing the interval unit for this component's default price point, either month or day. This property is only available for sites with Multifrequency enabled. |
| `unspsc_code` | `String` | Optional | (Optional) Custom UNSPSC commodity code for Level 3/CEDP payment data. When set, this value is sent as the commodity code on invoice line items for this component instead of the default derived from item_category. |

## Example

```ruby
on_off_component = OnOffComponent.new(
  name: 'name6',
  unit_price: 'String5',
  description: 'description6',
  handle: 'handle2',
  taxable: false,
  upgrade_charge: CreditType::FULL,
  downgrade_credit: CreditType::FULL
)
```

