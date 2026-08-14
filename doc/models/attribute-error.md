
# Attribute Error

## Structure

`AttributeError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `attribute` | `Array[String]` | Required | - |

## Example

```ruby
attribute_error = AttributeError.new(
  attribute: [
    'attribute6',
    'attribute5',
    'attribute4'
  ]
)
```

