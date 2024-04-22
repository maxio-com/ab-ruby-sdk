
# Product Response

## Structure

`ProductResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product` | [`Product`](../../doc/models/product.md) | Required | - |

## Example (as JSON)

```json
{
  "product": {
    "id": 134,
    "name": "name0",
    "handle": "handle6",
    "description": "description0",
    "accounting_code": "accounting_code6",
    "request_credit_card": false,
    "expiration_interval": 172,
    "expiration_interval_unit": "month",
    "created_at": "2016-03-13T12:52:32.123Z",
    "updated_at": "2016-03-13T12:52:32.123Z",
    "price_in_cents": 54,
    "interval": 186,
    "interval_unit": "day",
    "initial_charge_in_cents": 150,
    "trial_price_in_cents": 34,
    "trial_interval": 88,
    "trial_interval_unit": "day",
    "archived_at": "2016-03-13T12:52:32.123Z",
    "require_credit_card": false,
    "return_params": "return_params8",
    "taxable": false,
    "update_return_url": "update_return_url4",
    "initial_charge_after_trial": false,
    "version_number": 148,
    "update_return_params": "update_return_params4",
    "product_family": {
      "id": 14,
      "name": "name0",
      "handle": "handle6",
      "accounting_code": "accounting_code6",
      "description": "description0",
      "created_at": "2016-03-13T12:52:32.123Z",
      "updated_at": "2016-03-13T12:52:32.123Z"
    },
    "public_signup_pages": [
      {
        "id": 238,
        "return_url": "return_url2",
        "return_params": "return_params4",
        "url": "url0"
      },
      {
        "id": 238,
        "return_url": "return_url2",
        "return_params": "return_params4",
        "url": "url0"
      },
      {
        "id": 238,
        "return_url": "return_url2",
        "return_params": "return_params4",
        "url": "url0"
      }
    ],
    "product_price_point_name": "product_price_point_name6",
    "request_billing_address": false,
    "require_billing_address": false,
    "require_shipping_address": false,
    "tax_code": "tax_code8",
    "default_product_price_point_id": 150,
    "use_site_exchange_rate": false,
    "item_category": "item_category6",
    "product_price_point_id": 0,
    "product_price_point_handle": "product_price_point_handle8"
  }
}
```

