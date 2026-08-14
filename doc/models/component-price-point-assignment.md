
# Component Price Point Assignment

## Structure

`ComponentPricePointAssignment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_id` | `Integer` | Optional | - |
| `price_point` | String \| Integer \| nil | Optional | This is a container for one-of cases. |

## Example

```ruby
component_price_point_assignment = ComponentPricePointAssignment.new(
  component_id: 122,
  price_point: 'String5'
)
```

