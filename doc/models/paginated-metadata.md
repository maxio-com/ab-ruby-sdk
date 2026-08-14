
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
| `metadata` | [`Array[Metadata]`](../../doc/models/metadata.md) | Optional | - |

## Example

```ruby
paginated_metadata = PaginatedMetadata.new(
  total_count: 144,
  current_page: 120,
  total_pages: 132,
  per_page: 158,
  metadata: [
    Metadata.new(
      id: 50,
      value: 'value8',
      resource_id: 134,
      name: 'name6',
      deleted_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
    ),
    Metadata.new(
      id: 50,
      value: 'value8',
      resource_id: 134,
      name: 'name6',
      deleted_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
    ),
    Metadata.new(
      id: 50,
      value: 'value8',
      resource_id: 134,
      name: 'name6',
      deleted_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
    )
  ]
)
```

