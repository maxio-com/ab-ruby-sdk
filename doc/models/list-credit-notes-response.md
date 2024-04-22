
# List Credit Notes Response

## Structure

`ListCreditNotesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `credit_notes` | [`Array<CreditNote>`](../../doc/models/credit-note.md) | Required | - |

## Example (as JSON)

```json
{
  "credit_notes": [
    {
      "uid": "uid2",
      "site_id": 112,
      "customer_id": 224,
      "subscription_id": 40,
      "number": "number0",
      "sequence_number": 222,
      "issue_date": "2016-03-13",
      "applied_date": "2016-03-13",
      "status": "open",
      "currency": "currency2",
      "memo": "memo6",
      "seller": {
        "name": "name0",
        "address": {
          "street": "street6",
          "line2": "line20",
          "city": "city6",
          "state": "state2",
          "zip": "zip0",
          "country": "country0"
        },
        "phone": "phone0",
        "logo_url": "logo_url0"
      },
      "customer": {
        "chargify_id": 36,
        "first_name": "first_name0",
        "last_name": "last_name8",
        "organization": "organization6",
        "email": "email6",
        "vat_number": "vat_number2",
        "reference": "reference4"
      },
      "billing_address": {
        "street": "street8",
        "line2": "line22",
        "city": "city2",
        "state": "state6",
        "zip": "zip8",
        "country": "country2"
      },
      "shipping_address": {
        "street": "street0",
        "line2": "line24",
        "city": "city0",
        "state": "state6",
        "zip": "zip4",
        "country": "country4"
      },
      "subtotal_amount": "subtotal_amount4",
      "discount_amount": "discount_amount4",
      "tax_amount": "tax_amount4",
      "total_amount": "total_amount8",
      "applied_amount": "applied_amount6",
      "remaining_amount": "remaining_amount2",
      "line_items": [
        {
          "uid": "uid8",
          "title": "title4",
          "description": "description8",
          "quantity": "quantity4",
          "unit_price": "unit_price6",
          "subtotal_amount": "subtotal_amount8",
          "discount_amount": "discount_amount2",
          "tax_amount": "tax_amount8",
          "total_amount": "total_amount4",
          "tiered_unit_price": false,
          "period_range_start": "2016-03-13",
          "period_range_end": "2016-03-13",
          "product_id": 88,
          "product_version": 138,
          "component_id": 0,
          "price_point_id": 232,
          "billing_schedule_item_id": 236,
          "custom_item": false
        },
        {
          "uid": "uid8",
          "title": "title4",
          "description": "description8",
          "quantity": "quantity4",
          "unit_price": "unit_price6",
          "subtotal_amount": "subtotal_amount8",
          "discount_amount": "discount_amount2",
          "tax_amount": "tax_amount8",
          "total_amount": "total_amount4",
          "tiered_unit_price": false,
          "period_range_start": "2016-03-13",
          "period_range_end": "2016-03-13",
          "product_id": 88,
          "product_version": 138,
          "component_id": 0,
          "price_point_id": 232,
          "billing_schedule_item_id": 236,
          "custom_item": false
        },
        {
          "uid": "uid8",
          "title": "title4",
          "description": "description8",
          "quantity": "quantity4",
          "unit_price": "unit_price6",
          "subtotal_amount": "subtotal_amount8",
          "discount_amount": "discount_amount2",
          "tax_amount": "tax_amount8",
          "total_amount": "total_amount4",
          "tiered_unit_price": false,
          "period_range_start": "2016-03-13",
          "period_range_end": "2016-03-13",
          "product_id": 88,
          "product_version": 138,
          "component_id": 0,
          "price_point_id": 232,
          "billing_schedule_item_id": 236,
          "custom_item": false
        }
      ],
      "discounts": [
        {
          "uid": "uid4",
          "title": "title0",
          "description": "description4",
          "code": "code2",
          "source_type": "Coupon",
          "source_id": 62,
          "discount_type": "percentage",
          "percentage": "percentage2",
          "eligible_amount": "eligible_amount6",
          "discount_amount": "discount_amount8",
          "transaction_id": 26,
          "line_item_breakouts": [
            {
              "uid": "uid8",
              "eligible_amount": "eligible_amount0",
              "discount_amount": "discount_amount2"
            }
          ]
        },
        {
          "uid": "uid4",
          "title": "title0",
          "description": "description4",
          "code": "code2",
          "source_type": "Coupon",
          "source_id": 62,
          "discount_type": "percentage",
          "percentage": "percentage2",
          "eligible_amount": "eligible_amount6",
          "discount_amount": "discount_amount8",
          "transaction_id": 26,
          "line_item_breakouts": [
            {
              "uid": "uid8",
              "eligible_amount": "eligible_amount0",
              "discount_amount": "discount_amount2"
            }
          ]
        },
        {
          "uid": "uid4",
          "title": "title0",
          "description": "description4",
          "code": "code2",
          "source_type": "Coupon",
          "source_id": 62,
          "discount_type": "percentage",
          "percentage": "percentage2",
          "eligible_amount": "eligible_amount6",
          "discount_amount": "discount_amount8",
          "transaction_id": 26,
          "line_item_breakouts": [
            {
              "uid": "uid8",
              "eligible_amount": "eligible_amount0",
              "discount_amount": "discount_amount2"
            }
          ]
        }
      ],
      "taxes": [
        {
          "uid": "uid0",
          "title": "title6",
          "description": "description0",
          "source_type": "Tax",
          "source_id": 194,
          "percentage": "percentage8",
          "taxable_amount": "taxable_amount4",
          "tax_amount": "tax_amount6",
          "transaction_id": 158,
          "line_item_breakouts": [
            {
              "uid": "uid8",
              "taxable_amount": "taxable_amount2",
              "tax_amount": "tax_amount2",
              "tax_exempt_amount": "tax_exempt_amount8"
            },
            {
              "uid": "uid8",
              "taxable_amount": "taxable_amount2",
              "tax_amount": "tax_amount2",
              "tax_exempt_amount": "tax_exempt_amount8"
            },
            {
              "uid": "uid8",
              "taxable_amount": "taxable_amount2",
              "tax_amount": "tax_amount2",
              "tax_exempt_amount": "tax_exempt_amount8"
            }
          ],
          "tax_component_breakouts": [
            {
              "tax_rule_id": 212,
              "percentage": "percentage6",
              "country_code": "country_code8",
              "subdivision_code": "subdivision_code0"
            }
          ]
        },
        {
          "uid": "uid0",
          "title": "title6",
          "description": "description0",
          "source_type": "Tax",
          "source_id": 194,
          "percentage": "percentage8",
          "taxable_amount": "taxable_amount4",
          "tax_amount": "tax_amount6",
          "transaction_id": 158,
          "line_item_breakouts": [
            {
              "uid": "uid8",
              "taxable_amount": "taxable_amount2",
              "tax_amount": "tax_amount2",
              "tax_exempt_amount": "tax_exempt_amount8"
            },
            {
              "uid": "uid8",
              "taxable_amount": "taxable_amount2",
              "tax_amount": "tax_amount2",
              "tax_exempt_amount": "tax_exempt_amount8"
            },
            {
              "uid": "uid8",
              "taxable_amount": "taxable_amount2",
              "tax_amount": "tax_amount2",
              "tax_exempt_amount": "tax_exempt_amount8"
            }
          ],
          "tax_component_breakouts": [
            {
              "tax_rule_id": 212,
              "percentage": "percentage6",
              "country_code": "country_code8",
              "subdivision_code": "subdivision_code0"
            }
          ]
        }
      ],
      "applications": [
        {
          "uid": "uid8",
          "transaction_time": "2016-03-13T12:52:32.123Z",
          "invoice_uid": "invoice_uid8",
          "memo": "memo2",
          "applied_amount": "applied_amount0"
        },
        {
          "uid": "uid8",
          "transaction_time": "2016-03-13T12:52:32.123Z",
          "invoice_uid": "invoice_uid8",
          "memo": "memo2",
          "applied_amount": "applied_amount0"
        }
      ],
      "refunds": [
        {
          "transaction_id": 240,
          "payment_id": 110,
          "memo": "memo2",
          "original_amount": "original_amount2",
          "applied_amount": "applied_amount0",
          "gateway_transaction_id": "gateway_transaction_id0",
          "gateway_used": "gateway_used0",
          "gateway_handle": "gateway_handle0"
        },
        {
          "transaction_id": 240,
          "payment_id": 110,
          "memo": "memo2",
          "original_amount": "original_amount2",
          "applied_amount": "applied_amount0",
          "gateway_transaction_id": "gateway_transaction_id0",
          "gateway_used": "gateway_used0",
          "gateway_handle": "gateway_handle0"
        },
        {
          "transaction_id": 240,
          "payment_id": 110,
          "memo": "memo2",
          "original_amount": "original_amount2",
          "applied_amount": "applied_amount0",
          "gateway_transaction_id": "gateway_transaction_id0",
          "gateway_used": "gateway_used0",
          "gateway_handle": "gateway_handle0"
        }
      ],
      "origin_invoices": [
        {
          "uid": "uid0",
          "number": "number2"
        }
      ]
    }
  ]
}
```

