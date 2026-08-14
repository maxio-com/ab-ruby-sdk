
# Create Metadata Request

## Structure

`CreateMetadataRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metadata` | [`Array[CreateMetadata]`](../../doc/models/create-metadata.md) | Required | - |

## Example

```ruby
create_metadata_request = CreateMetadataRequest.new(
  metadata: [
    CreateMetadata.new(
      name: 'name6',
      value: 'value8'
    )
  ]
)
```

