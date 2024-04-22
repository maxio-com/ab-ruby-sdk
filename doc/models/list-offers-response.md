
# List Offers Response

## Structure

`ListOffersResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `offers` | [`Array<Offer>`](../../doc/models/offer.md) | Optional | - |

## Example (as JSON)

```json
{
  "offers": [
    {
      "id": 12,
      "site_id": 194,
      "product_family_id": 16,
      "product_id": 210,
      "product_price_point_id": 134,
      "product_revisable_number": 230,
      "name": "name4",
      "handle": "handle0",
      "description": "description4",
      "created_at": "2016-03-13T12:52:32.123Z",
      "updated_at": "2016-03-13T12:52:32.123Z",
      "archived_at": "2016-03-13T12:52:32.123Z",
      "offer_items": [
        {
          "component_id": 174,
          "price_point_id": 58,
          "starting_quantity": "starting_quantity4",
          "editable": false,
          "component_unit_price": "component_unit_price4",
          "component_name": "component_name0",
          "price_point_name": "price_point_name4",
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
          ],
          "interval": 116,
          "interval_unit": "day"
        },
        {
          "component_id": 174,
          "price_point_id": 58,
          "starting_quantity": "starting_quantity4",
          "editable": false,
          "component_unit_price": "component_unit_price4",
          "component_name": "component_name0",
          "price_point_name": "price_point_name4",
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
          ],
          "interval": 116,
          "interval_unit": "day"
        },
        {
          "component_id": 174,
          "price_point_id": 58,
          "starting_quantity": "starting_quantity4",
          "editable": false,
          "component_unit_price": "component_unit_price4",
          "component_name": "component_name0",
          "price_point_name": "price_point_name4",
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
          ],
          "interval": 116,
          "interval_unit": "day"
        }
      ],
      "offer_discounts": [
        {
          "coupon_code": "coupon_code0",
          "coupon_id": 202,
          "coupon_name": "coupon_name2"
        },
        {
          "coupon_code": "coupon_code0",
          "coupon_id": 202,
          "coupon_name": "coupon_name2"
        }
      ],
      "product_family_name": "product_family_name8",
      "product_name": "product_name0",
      "product_price_point_name": "product_price_point_name0",
      "product_price_in_cents": 242,
      "offer_signup_pages": [
        {
          "id": 22,
          "nickname": "nickname2",
          "enabled": false,
          "return_url": "return_url8",
          "return_params": "return_params6",
          "url": "url0"
        },
        {
          "id": 22,
          "nickname": "nickname2",
          "enabled": false,
          "return_url": "return_url8",
          "return_params": "return_params6",
          "url": "url0"
        }
      ]
    },
    {
      "id": 12,
      "site_id": 194,
      "product_family_id": 16,
      "product_id": 210,
      "product_price_point_id": 134,
      "product_revisable_number": 230,
      "name": "name4",
      "handle": "handle0",
      "description": "description4",
      "created_at": "2016-03-13T12:52:32.123Z",
      "updated_at": "2016-03-13T12:52:32.123Z",
      "archived_at": "2016-03-13T12:52:32.123Z",
      "offer_items": [
        {
          "component_id": 174,
          "price_point_id": 58,
          "starting_quantity": "starting_quantity4",
          "editable": false,
          "component_unit_price": "component_unit_price4",
          "component_name": "component_name0",
          "price_point_name": "price_point_name4",
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
          ],
          "interval": 116,
          "interval_unit": "day"
        },
        {
          "component_id": 174,
          "price_point_id": 58,
          "starting_quantity": "starting_quantity4",
          "editable": false,
          "component_unit_price": "component_unit_price4",
          "component_name": "component_name0",
          "price_point_name": "price_point_name4",
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
          ],
          "interval": 116,
          "interval_unit": "day"
        },
        {
          "component_id": 174,
          "price_point_id": 58,
          "starting_quantity": "starting_quantity4",
          "editable": false,
          "component_unit_price": "component_unit_price4",
          "component_name": "component_name0",
          "price_point_name": "price_point_name4",
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
          ],
          "interval": 116,
          "interval_unit": "day"
        }
      ],
      "offer_discounts": [
        {
          "coupon_code": "coupon_code0",
          "coupon_id": 202,
          "coupon_name": "coupon_name2"
        },
        {
          "coupon_code": "coupon_code0",
          "coupon_id": 202,
          "coupon_name": "coupon_name2"
        }
      ],
      "product_family_name": "product_family_name8",
      "product_name": "product_name0",
      "product_price_point_name": "product_price_point_name0",
      "product_price_in_cents": 242,
      "offer_signup_pages": [
        {
          "id": 22,
          "nickname": "nickname2",
          "enabled": false,
          "return_url": "return_url8",
          "return_params": "return_params6",
          "url": "url0"
        },
        {
          "id": 22,
          "nickname": "nickname2",
          "enabled": false,
          "return_url": "return_url8",
          "return_params": "return_params6",
          "url": "url0"
        }
      ]
    },
    {
      "id": 12,
      "site_id": 194,
      "product_family_id": 16,
      "product_id": 210,
      "product_price_point_id": 134,
      "product_revisable_number": 230,
      "name": "name4",
      "handle": "handle0",
      "description": "description4",
      "created_at": "2016-03-13T12:52:32.123Z",
      "updated_at": "2016-03-13T12:52:32.123Z",
      "archived_at": "2016-03-13T12:52:32.123Z",
      "offer_items": [
        {
          "component_id": 174,
          "price_point_id": 58,
          "starting_quantity": "starting_quantity4",
          "editable": false,
          "component_unit_price": "component_unit_price4",
          "component_name": "component_name0",
          "price_point_name": "price_point_name4",
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
          ],
          "interval": 116,
          "interval_unit": "day"
        },
        {
          "component_id": 174,
          "price_point_id": 58,
          "starting_quantity": "starting_quantity4",
          "editable": false,
          "component_unit_price": "component_unit_price4",
          "component_name": "component_name0",
          "price_point_name": "price_point_name4",
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
          ],
          "interval": 116,
          "interval_unit": "day"
        },
        {
          "component_id": 174,
          "price_point_id": 58,
          "starting_quantity": "starting_quantity4",
          "editable": false,
          "component_unit_price": "component_unit_price4",
          "component_name": "component_name0",
          "price_point_name": "price_point_name4",
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
          ],
          "interval": 116,
          "interval_unit": "day"
        }
      ],
      "offer_discounts": [
        {
          "coupon_code": "coupon_code0",
          "coupon_id": 202,
          "coupon_name": "coupon_name2"
        },
        {
          "coupon_code": "coupon_code0",
          "coupon_id": 202,
          "coupon_name": "coupon_name2"
        }
      ],
      "product_family_name": "product_family_name8",
      "product_name": "product_name0",
      "product_price_point_name": "product_price_point_name0",
      "product_price_in_cents": 242,
      "offer_signup_pages": [
        {
          "id": 22,
          "nickname": "nickname2",
          "enabled": false,
          "return_url": "return_url8",
          "return_params": "return_params6",
          "url": "url0"
        },
        {
          "id": 22,
          "nickname": "nickname2",
          "enabled": false,
          "return_url": "return_url8",
          "return_params": "return_params6",
          "url": "url0"
        }
      ]
    }
  ]
}
```

