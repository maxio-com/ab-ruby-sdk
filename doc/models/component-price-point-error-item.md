
# Component Price Point Error Item

## Structure

`ComponentPricePointErrorItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_id` | `Integer` | Optional | - |
| `message` | `String` | Optional | - |
| `price_point` | `Integer` | Optional | - |

## Example

```ruby
component_price_point_error_item = ComponentPricePointErrorItem.new(
  component_id: 152,
  message: 'message0',
  price_point: 50
)
```

