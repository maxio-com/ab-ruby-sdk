
# Create or Update Product

## Structure

`CreateOrUpdateProduct`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | The product name |
| `handle` | `String` | Optional | The product API handle |
| `description` | `String` | Required | The product description |
| `accounting_code` | `String` | Optional | E.g. Internal ID or SKU Number |
| `require_credit_card` | `TrueClass \| FalseClass` | Optional | Deprecated value that can be ignored unless you have legacy hosted pages. For Public Signup Page users, please read this attribute from under the signup page. |
| `price_in_cents` | `Integer` | Required | The product price, in integer cents |
| `interval` | `Integer` | Required | The numerical interval. i.e. an interval of ‘30’ coupled with an interval_unit of day would mean this product would renew every 30 days |
| `interval_unit` | [`IntervalUnit`](../../doc/models/interval-unit.md) | Required | A string representing the interval unit for this product, either month or day |
| `auto_create_signup_page` | `TrueClass \| FalseClass` | Optional | - |
| `tax_code` | `String` | Optional | A string representing the tax code related to the product type. This is especially important when using the Avalara service to tax based on locale. This attribute has a max length of 10 characters.<br>**Constraints**: *Maximum Length*: `10` |

## Example (as JSON)

```json
{
  "name": "name8",
  "handle": "handle4",
  "description": "description8",
  "accounting_code": "accounting_code4",
  "require_credit_card": false,
  "price_in_cents": 190,
  "interval": 174,
  "interval_unit": "day",
  "auto_create_signup_page": false,
  "tax_code": "tax_code6"
}
```

