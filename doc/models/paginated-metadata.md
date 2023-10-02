
# Paginated Metadata

## Structure

`PaginatedMetadata`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `total_count` | `Integer` | Optional | - |
| `current_page` | `Integer` | Optional | - |
| `total_pages` | `Integer` | Optional | - |
| `per_page` | `Integer` | Optional | - |
| `metadata` | [`Array<Metadata>`](../../doc/models/metadata.md) | Optional | - |

## Example (as JSON)

```json
{
  "total_count": 26,
  "current_page": 2,
  "total_pages": 14,
  "per_page": 20,
  "metadata": [
    {
      "id": 50,
      "value": "value8",
      "resource_id": 134,
      "name": "name6",
      "deleted_at": "deleted_at4"
    },
    {
      "id": 50,
      "value": "value8",
      "resource_id": 134,
      "name": "name6",
      "deleted_at": "deleted_at4"
    }
  ]
}
```

