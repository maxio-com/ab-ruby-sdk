
# Component Price Point Assignment

## Structure

`ComponentPricePointAssignment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_id` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `price_point` | String \| Integer \| nil | Optional | This is a container for one-of cases. |

## Example

```ruby
component_price_point_assignment = ComponentPricePointAssignment.new(
  component_id: 44,
  price_point: 'String5'
)
```

