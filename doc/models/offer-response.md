
# Offer Response

## Structure

`OfferResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `offer` | [`Offer`](../../doc/models/offer.md) | Optional | - |

## Example

```ruby
offer_response = OfferResponse.new(
  offer: Offer.new(
    id: 28,
    site_id: 210,
    product_family_id: 224,
    product_id: 30,
    product_price_point_id: 150
  )
)
```

