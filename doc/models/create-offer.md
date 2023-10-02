
# Create Offer

## Structure

`CreateOffer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | - |
| `handle` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `product_id` | `Integer` | Optional | - |
| `product_price_point_id` | `Integer` | Optional | - |
| `components` | [`Array<CreateOfferComponent>`](../../doc/models/create-offer-component.md) | Optional | - |
| `coupons` | `Array<String>` | Optional | - |

## Example (as JSON)

```json
{
  "name": "name4",
  "handle": "handle0",
  "description": "description4",
  "product_id": 208,
  "product_price_point_id": 132
}
```

