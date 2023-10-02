
# Create or Update Product

## Structure

`CreateOrUpdateProduct`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `handle` | `String` | Optional | - |
| `description` | `String` | Required | - |
| `accounting_code` | `String` | Optional | - |
| `require_credit_card` | `TrueClass \| FalseClass` | Optional | - |
| `price_in_cents` | `Integer` | Required | - |
| `interval` | `Integer` | Required | - |
| `interval_unit` | `String` | Required | - |
| `auto_create_signup_page` | `TrueClass \| FalseClass` | Optional | - |
| `tax_code` | `String` | Optional | - |

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
  "interval_unit": "interval_unit8",
  "auto_create_signup_page": false,
  "tax_code": "tax_code6"
}
```

