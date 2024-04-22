
# List Product Price Points Response

## Structure

`ListProductPricePointsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_points` | [`Array<ProductPricePoint>`](../../doc/models/product-price-point.md) | Required | - |

## Example (as JSON)

```json
{
  "price_points": [
    {
      "id": 40,
      "name": "name2",
      "handle": "handle8",
      "price_in_cents": 108,
      "interval": 92,
      "interval_unit": "day",
      "trial_price_in_cents": 196,
      "trial_interval": 250,
      "trial_interval_unit": "day",
      "trial_type": "trial_type6",
      "introductory_offer": false,
      "initial_charge_in_cents": 56,
      "initial_charge_after_trial": false,
      "expiration_interval": 78,
      "expiration_interval_unit": "day",
      "product_id": 238,
      "archived_at": "2016-03-13T12:52:32.123Z",
      "created_at": "2016-03-13T12:52:32.123Z",
      "updated_at": "2016-03-13T12:52:32.123Z",
      "use_site_exchange_rate": false,
      "type": "default",
      "tax_included": false,
      "subscription_id": 150,
      "currency_prices": [
        {
          "id": 50,
          "currency": "currency8",
          "price": 233.74,
          "formatted_price": "formatted_price6",
          "product_price_point_id": 172,
          "role": "initial"
        },
        {
          "id": 50,
          "currency": "currency8",
          "price": 233.74,
          "formatted_price": "formatted_price6",
          "product_price_point_id": 172,
          "role": "initial"
        }
      ]
    }
  ]
}
```

