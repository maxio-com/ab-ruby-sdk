
# List Public Keys Meta

## Structure

`ListPublicKeysMeta`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `total_count` | `Integer` | Optional | - |
| `current_page` | `Integer` | Optional | - |
| `total_pages` | `Integer` | Optional | - |
| `per_page` | `Integer` | Optional | - |

## Example

```ruby
list_public_keys_meta = ListPublicKeysMeta.new(
  total_count: 240,
  current_page: 216,
  total_pages: 228,
  per_page: 62
)
```

