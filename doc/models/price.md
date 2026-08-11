
# Price

## Structure

`Price`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `starting_quantity` | Integer \| String | Required | This is a container for one-of cases. |
| `ending_quantity` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `unit_price` | Float \| String | Required | This is a container for one-of cases. |

## Example

```ruby
price = Price.new(
  starting_quantity: 132,
  unit_price: 70.44,
  ending_quantity: 6
)
```

