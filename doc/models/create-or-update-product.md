
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
| `trial_price_in_cents` | `Integer` | Optional | The product trial price, in integer cents |
| `trial_interval` | `Integer` | Optional | The numerical trial interval. i.e. an interval of ‘30’ coupled with a trial_interval_unit of day would mean this product trial would last 30 days. |
| `trial_interval_unit` | [`IntervalUnit`](../../doc/models/interval-unit.md) | Optional | A string representing the trial interval unit for this product, either month or day |
| `trial_type` | `String` | Optional | - |
| `expiration_interval` | `Integer` | Optional | The numerical expiration interval. i.e. an expiration_interval of ‘30’ coupled with an expiration_interval_unit of day would mean this product would expire after 30 days. |
| `expiration_interval_unit` | [`ExpirationIntervalUnit`](../../doc/models/expiration-interval-unit.md) | Optional | A string representing the expiration interval unit for this product, either month, day or never |
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
  "trial_price_in_cents": 22,
  "trial_interval": 76
}
```

