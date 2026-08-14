
# Create Offer

## Structure

`CreateOffer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `handle` | `String` | Required | - |
| `description` | `String` | Optional | - |
| `product_id` | `Integer` | Required | - |
| `product_price_point_id` | `Integer` | Optional | - |
| `components` | [`Array[CreateOfferComponent]`](../../doc/models/create-offer-component.md) | Optional | - |
| `coupons` | `Array[String]` | Optional | - |

## Example

```ruby
create_offer = CreateOffer.new(
  name: 'name2',
  handle: 'handle8',
  product_id: 8,
  description: 'description2',
  product_price_point_id: 188,
  components: [
    CreateOfferComponent.new(
      component_id: 108,
      price_point_id: 124,
      starting_quantity: 84
    ),
    CreateOfferComponent.new(
      component_id: 108,
      price_point_id: 124,
      starting_quantity: 84
    )
  ],
  coupons: [
    'coupons8'
  ]
)
```

