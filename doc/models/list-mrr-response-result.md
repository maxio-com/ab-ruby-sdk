
# List MRR Response Result

## Structure

`ListMRRResponseResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Optional | - |
| `per_page` | `Integer` | Optional | - |
| `total_pages` | `Integer` | Optional | - |
| `total_entries` | `Integer` | Optional | - |
| `currency` | `String` | Optional | - |
| `currency_symbol` | `String` | Optional | - |
| `movements` | [`Array<Movement>`](../../doc/models/movement.md) | Optional | - |

## Example (as JSON)

```json
{
  "page": 150,
  "per_page": 238,
  "total_pages": 16,
  "total_entries": 112,
  "currency": "currency8"
}
```

