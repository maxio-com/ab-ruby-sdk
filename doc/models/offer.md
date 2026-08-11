
# Offer

## Structure

`Offer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `site_id` | `Integer` | Optional | - |
| `product_family_id` | `Integer` | Optional | - |
| `product_id` | `Integer` | Optional | - |
| `product_price_point_id` | `Integer` | Optional | - |
| `product_revisable_number` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `handle` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `archived_at` | `DateTime` | Optional | - |
| `offer_items` | [`Array[OfferItem]`](../../doc/models/offer-item.md) | Optional | - |
| `offer_discounts` | [`Array[OfferDiscount]`](../../doc/models/offer-discount.md) | Optional | - |
| `product_family_name` | `String` | Optional | - |
| `product_name` | `String` | Optional | - |
| `product_price_point_name` | `String` | Optional | - |
| `product_price_in_cents` | `Integer` | Optional | - |
| `offer_signup_pages` | [`Array[OfferSignupPage]`](../../doc/models/offer-signup-page.md) | Optional | - |

## Example

```ruby
offer = Offer.new(
  id: 28,
  site_id: 210,
  product_family_id: 224,
  product_id: 30,
  product_price_point_id: 150
)
```

