
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
| `movements` | [`Array[Movement]`](../../doc/models/movement.md) | Optional | - |

## Example

```ruby
list_mrr_response_result = ListMRRResponseResult.new(
  page: 170,
  per_page: 82,
  total_pages: 208,
  total_entries: 48,
  currency: 'currency6'
)
```

