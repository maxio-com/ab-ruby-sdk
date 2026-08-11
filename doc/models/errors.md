
# Errors

## Structure

`Errors`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `per_page` | `Array[String]` | Optional | - |
| `price_point` | `Array[String]` | Optional | - |

## Example

```ruby
errors = Errors.new(
  per_page: [
    'per_page1',
    'per_page2',
    'per_page3'
  ],
  price_point: [
    'price_point0',
    'price_point9',
    'price_point8'
  ]
)
```

