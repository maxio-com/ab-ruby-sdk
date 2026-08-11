
# List Offers Response

## Structure

`ListOffersResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `offers` | [`Array[Offer]`](../../doc/models/offer.md) | Optional | - |

## Example

```ruby
list_offers_response = ListOffersResponse.new(
  offers: [
    Offer.new(
      id: 12,
      site_id: 194,
      product_family_id: 16,
      product_id: 210,
      product_price_point_id: 134
    ),
    Offer.new(
      id: 12,
      site_id: 194,
      product_family_id: 16,
      product_id: 210,
      product_price_point_id: 134
    )
  ]
)
```

