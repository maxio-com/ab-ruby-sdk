
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
| `created_at` | `String` | Optional | - |
| `updated_at` | `String` | Optional | - |
| `archived_at` | `String` | Optional | - |
| `offer_items` | [`Array<OfferItem>`](../../doc/models/offer-item.md) | Optional | - |
| `offer_discounts` | [`Array<OfferDiscount>`](../../doc/models/offer-discount.md) | Optional | - |
| `product_family_name` | `String` | Optional | - |
| `product_name` | `String` | Optional | - |
| `product_price_point_name` | `String` | Optional | - |
| `product_price_in_cents` | `Integer` | Optional | - |
| `offer_signup_pages` | [`Array<OfferSignupPage>`](../../doc/models/offer-signup-page.md) | Optional | - |

## Example (as JSON)

```json
{
  "id": 154,
  "site_id": 80,
  "product_family_id": 158,
  "product_id": 96,
  "product_price_point_id": 20
}
```

