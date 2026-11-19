
# Errors

## Structure

`Errors`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | `Array[String]` | Required | - |

## Example

```ruby
errors = Errors.new(
  price_point: [
    'price_point0',
    'price_point9',
    'price_point8'
  ]
)
```

