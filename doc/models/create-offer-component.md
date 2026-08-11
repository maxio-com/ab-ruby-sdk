
# Create Offer Component

## Structure

`CreateOfferComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_id` | `Integer` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |
| `starting_quantity` | `Integer` | Optional | - |

## Example

```ruby
create_offer_component = CreateOfferComponent.new(
  component_id: 206,
  price_point_id: 230,
  starting_quantity: 242
)
```

