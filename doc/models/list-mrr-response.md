
# List MRR Response

## Structure

`ListMRRResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mrr` | [`ListMRRResponseResult`](../../doc/models/list-mrr-response-result.md) | Required | - |

## Example

```ruby
list_mrr_response = ListMRRResponse.new(
  mrr: ListMRRResponseResult.new(
    page: 30,
    per_page: 198,
    total_pages: 92,
    total_entries: 188,
    currency: 'currency4'
  )
)
```

