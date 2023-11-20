
# Create Customer

## Structure

`CreateCustomer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `first_name` | `String` | Required | - |
| `last_name` | `String` | Required | - |
| `email` | `String` | Required | - |
| `cc_emails` | `String` | Optional | - |
| `organization` | `String` | Optional | - |
| `reference` | `String` | Optional | - |
| `address` | `String` | Optional | - |
| `address_2` | `String` | Optional | - |
| `city` | `String` | Optional | - |
| `state` | `String` | Optional | - |
| `zip` | `String` | Optional | - |
| `country` | `String` | Optional | - |
| `phone` | `String` | Optional | - |
| `locale` | `String` | Optional | Set a specific language on a customer record. |
| `vat_number` | `String` | Optional | - |
| `tax_exempt` | `TrueClass \| FalseClass` | Optional | - |
| `tax_exempt_reason` | `String` | Optional | - |
| `parent_id` | `Integer` | Optional | The parent ID in Chargify if applicable. Parent is another Customer object. |

## Example (as JSON)

```json
{
  "first_name": "first_name8",
  "last_name": "last_name6",
  "email": "email8",
  "cc_emails": "cc_emails8",
  "organization": "organization2",
  "reference": "reference4",
  "address": "address4",
  "address_2": "address_22"
}
```

