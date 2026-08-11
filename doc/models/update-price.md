
# Update Price

## Structure

`UpdatePrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `ending_quantity` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `unit_price` | Float \| String \| nil | Optional | This is a container for one-of cases. |
| `destroy` | `TrueClass \| FalseClass` | Optional | - |
| `starting_quantity` | Integer \| String \| nil | Optional | This is a container for one-of cases. |

## Example

```ruby
update_price = UpdatePrice.new(
  id: 94,
  ending_quantity: 216,
  unit_price: 118.74,
  destroy: false,
  starting_quantity: 90
)
```

