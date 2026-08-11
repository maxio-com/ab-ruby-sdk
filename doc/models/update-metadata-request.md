
# Update Metadata Request

## Structure

`UpdateMetadataRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metadata` | [`UpdateMetadata`](../../doc/models/update-metadata.md) | Optional | - |

## Example

```ruby
update_metadata_request = UpdateMetadataRequest.new(
  metadata: UpdateMetadata.new(
    current_name: 'current_name0',
    name: 'name6',
    value: 'value8'
  )
)
```

