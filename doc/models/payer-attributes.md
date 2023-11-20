
# Payer Attributes

## Structure

`PayerAttributes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `first_name` | `String` | Optional | - |
| `last_name` | `String` | Optional | - |
| `email` | `String` | Optional | - |
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
| `locale` | `String` | Optional | - |
| `vat_number` | `String` | Optional | - |
| `tax_exempt` | `String` | Optional | - |
| `tax_exempt_reason` | `String` | Optional | - |
| `metafields` | `Hash[String, String]` | Optional | (Optional) A set of key/value pairs representing custom fields and their values. Metafields will be created “on-the-fly” in your site for a given key, if they have not been created yet. |

## Example (as JSON)

```json
{
  "metafields": {
    "custom_field_name_1": "custom_field_value_1",
    "custom_field_name_2": "custom_field_value_2"
  },
  "first_name": "first_name4",
  "last_name": "last_name2",
  "email": "email2",
  "cc_emails": "cc_emails4",
  "organization": "organization8"
}
```

