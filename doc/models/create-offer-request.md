
# Create Offer Request

## Structure

`CreateOfferRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `offer` | [`CreateOffer`](../../doc/models/create-offer.md) | Required | - |

## Example

```ruby
create_offer_request = CreateOfferRequest.new(
  offer: CreateOffer.new(
    name: 'name4',
    handle: 'handle0',
    product_id: 30,
    description: 'description6',
    product_price_point_id: 150,
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
      'coupons6'
    ]
  )
)
```

