
# Product Price Point Response

## Structure

`ProductPricePointResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | [`ProductPricePoint`](../../doc/models/product-price-point.md) | Required | - |

## Example (as JSON)

```json
{
  "price_point": {
    "id": 248,
    "name": "name0",
    "handle": "handle6",
    "price_in_cents": 196,
    "interval": 44,
    "interval_unit": "day",
    "trial_price_in_cents": 108,
    "trial_interval": 202,
    "trial_interval_unit": "day",
    "trial_type": "trial_type4",
    "introductory_offer": false,
    "initial_charge_in_cents": 8,
    "initial_charge_after_trial": false,
    "expiration_interval": 30,
    "expiration_interval_unit": "day",
    "product_id": 190,
    "archived_at": "2016-03-13T12:52:32.123Z",
    "created_at": "2016-03-13T12:52:32.123Z",
    "updated_at": "2016-03-13T12:52:32.123Z",
    "use_site_exchange_rate": false,
    "type": "default",
    "tax_included": false,
    "subscription_id": 102,
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
}
```

