
# Create Metafields Request

## Structure

`CreateMetafieldsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metafields` | [Create Metafield](../../doc/models/create-metafield.md) \| Array[[Create Metafield](../../doc/models/create-metafield.md)] | Required | This is a container for one-of cases. |

## Example (as JSON)

```json
{
  "metafields": {
    "name": "my_field",
    "scope": {
      "csv": "0",
      "invoices": "0",
      "statements": "0",
      "portal": "0",
      "public_show": "0",
      "public_edit": "0"
    },
    "input_type": "text",
    "enum": [
      "string"
    ]
  }
}
```

