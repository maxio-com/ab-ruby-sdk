
# Update Component

## Structure

`UpdateComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `handle` | `String` | Optional | - |
| `name` | `String` | Optional | The name of the Component, suitable for display on statements. i.e. Text Messages. |
| `description` | `String` | Optional | The description of the component. |
| `accounting_code` | `String` | Optional | - |
| `taxable` | `TrueClass \| FalseClass` | Optional | Boolean flag describing whether a component is taxable or not. |
| `tax_code` | `String` | Optional | A string representing the tax code related to the component type. This is especially important when using the Avalara service to tax based on locale. This attribute has a max length of 10 characters. |
| `item_category` | [`ItemCategory`](../../doc/models/item-category.md) | Optional | One of the following: Business Software, Consumer Software, Digital Services, Physical Goods, Other |
| `display_on_hosted_page` | `TrueClass \| FalseClass` | Optional | - |
| `upgrade_charge` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of charge to be applied when a component is upgraded. Valid values are: `prorated`, `full`, `none`. |

## Example (as JSON)

```json
{
  "item_category": "Business Software",
  "handle": "handle6",
  "name": "name0",
  "description": "description0",
  "accounting_code": "accounting_code6",
  "taxable": false
}
```

