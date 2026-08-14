
# Base String Error

The error is base if it is not directly associated with a single attribute.

## Structure

`BaseStringError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `base` | `Array[String]` | Optional | - |

## Example

```ruby
base_string_error = BaseStringError.new(
  base: [
    'base3',
    'base4'
  ]
)
```

