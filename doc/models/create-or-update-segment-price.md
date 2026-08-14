
# Create or Update Segment Price

## Structure

`CreateOrUpdateSegmentPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `starting_quantity` | `Integer` | Optional | - |
| `ending_quantity` | `Integer` | Optional | - |
| `unit_price` | String \| Float | Required | This is a container for one-of cases. |

## Example

```ruby
create_or_update_segment_price = CreateOrUpdateSegmentPrice.new(
  unit_price: 'String7',
  starting_quantity: 94,
  ending_quantity: 188
)
```

