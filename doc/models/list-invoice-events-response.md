
# List Invoice Events Response

## Structure

`ListInvoiceEventsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `events` | [`Array<InvoiceEvent>`](../../doc/models/invoice-event.md) | Optional | - |
| `page` | `Integer` | Optional | - |
| `per_page` | `Integer` | Optional | - |
| `total_pages` | `Integer` | Optional | - |

## Example (as JSON)

```json
{
  "events": [
    {
      "id": 68,
      "event_type": "void_invoice",
      "event_data": {
        "uid": "uid2",
        "credit_note_number": "credit_note_number4",
        "credit_note_uid": "credit_note_uid4",
        "original_amount": "original_amount6",
        "applied_amount": "applied_amount6",
        "transaction_time": "2016-03-13T12:52:32.123Z",
        "memo": "memo6",
        "role": "role4",
        "consolidated_invoice": false,
        "applied_credit_notes": [
          {
            "uid": "uid4",
            "number": "number8"
          },
          {
            "uid": "uid4",
            "number": "number8"
          }
        ]
      },
      "timestamp": "2016-03-13T12:52:32.123Z",
      "invoice": {
        "id": 166,
        "uid": "uid6",
        "site_id": 92,
        "customer_id": 204,
        "subscription_id": 20,
        "number": "number6",
        "sequence_number": 202,
        "transaction_time": "2016-03-13T12:52:32.123Z",
        "created_at": "2016-03-13T12:52:32.123Z",
        "updated_at": "2016-03-13T12:52:32.123Z",
        "issue_date": "2016-03-13",
        "due_date": "2016-03-13",
        "paid_date": "2016-03-13",
        "status": "paid",
        "role": "unset",
        "parent_invoice_id": 236,
        "collection_method": "automatic",
        "payment_instructions": "payment_instructions6",
        "currency": "currency4",
        "consolidation_level": "parent",
        "parent_invoice_uid": "parent_invoice_uid4",
        "subscription_group_id": 154,
        "parent_invoice_number": 76,
        "group_primary_subscription_id": 10,
        "product_name": "product_name2",
        "product_family_name": "product_family_name0",
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
        "payer": {
          "chargify_id": 84,
          "first_name": "first_name8",
          "last_name": "last_name6",
          "organization": "organization2",
          "email": "email8",
          "vat_number": "vat_number6"
        },
        "recipient_emails": [
          "recipient_emails3",
          "recipient_emails4"
        ],
        "net_terms": 144,
        "memo": "memo0",
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
        "subtotal_amount": "subtotal_amount0",
        "discount_amount": "discount_amount0",
        "tax_amount": "tax_amount0",
        "total_amount": "total_amount2",
        "credit_amount": "credit_amount6",
        "refund_amount": "refund_amount8",
        "paid_amount": "paid_amount2",
        "due_amount": "due_amount8",
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
            "transaction_id": 18,
            "product_id": 88,
            "product_version": 138,
            "component_id": 0,
            "price_point_id": 232,
            "hide": false,
            "component_cost_data": {
              "rates": [
                {
                  "component_code_id": 116,
                  "price_point_id": 226,
                  "product_id": 94,
                  "quantity": "quantity0",
                  "amount": "amount6",
                  "pricing_scheme": "per_unit",
                  "tiers": [
                    {
                      "starting_quantity": 116,
                      "ending_quantity": 90,
                      "quantity": "quantity4",
                      "unit_price": "unit_price6",
                      "amount": "amount0"
                    },
                    {
                      "starting_quantity": 116,
                      "ending_quantity": 90,
                      "quantity": "quantity4",
                      "unit_price": "unit_price6",
                      "amount": "amount0"
                    }
                  ]
                }
              ]
            },
            "product_price_point_id": 12,
            "custom_item": false,
            "kind": "kind6"
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
            "transaction_id": 18,
            "product_id": 88,
            "product_version": 138,
            "component_id": 0,
            "price_point_id": 232,
            "hide": false,
            "component_cost_data": {
              "rates": [
                {
                  "component_code_id": 116,
                  "price_point_id": 226,
                  "product_id": 94,
                  "quantity": "quantity0",
                  "amount": "amount6",
                  "pricing_scheme": "per_unit",
                  "tiers": [
                    {
                      "starting_quantity": 116,
                      "ending_quantity": 90,
                      "quantity": "quantity4",
                      "unit_price": "unit_price6",
                      "amount": "amount0"
                    },
                    {
                      "starting_quantity": 116,
                      "ending_quantity": 90,
                      "quantity": "quantity4",
                      "unit_price": "unit_price6",
                      "amount": "amount0"
                    }
                  ]
                }
              ]
            },
            "product_price_point_id": 12,
            "custom_item": false,
            "kind": "kind6"
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
            "transaction_id": 18,
            "product_id": 88,
            "product_version": 138,
            "component_id": 0,
            "price_point_id": 232,
            "hide": false,
            "component_cost_data": {
              "rates": [
                {
                  "component_code_id": 116,
                  "price_point_id": 226,
                  "product_id": 94,
                  "quantity": "quantity0",
                  "amount": "amount6",
                  "pricing_scheme": "per_unit",
                  "tiers": [
                    {
                      "starting_quantity": 116,
                      "ending_quantity": 90,
                      "quantity": "quantity4",
                      "unit_price": "unit_price6",
                      "amount": "amount0"
                    },
                    {
                      "starting_quantity": 116,
                      "ending_quantity": 90,
                      "quantity": "quantity4",
                      "unit_price": "unit_price6",
                      "amount": "amount0"
                    }
                  ]
                }
              ]
            },
            "product_price_point_id": 12,
            "custom_item": false,
            "kind": "kind6"
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
        "credits": [
          {
            "uid": "uid0",
            "credit_note_number": "credit_note_number4",
            "credit_note_uid": "credit_note_uid4",
            "transaction_time": "2016-03-13T12:52:32.123Z",
            "memo": "memo4",
            "original_amount": "original_amount4",
            "applied_amount": "applied_amount2"
          },
          {
            "uid": "uid0",
            "credit_note_number": "credit_note_number4",
            "credit_note_uid": "credit_note_uid4",
            "transaction_time": "2016-03-13T12:52:32.123Z",
            "memo": "memo4",
            "original_amount": "original_amount4",
            "applied_amount": "applied_amount2"
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
        "payments": [
          {
            "transaction_time": "2016-03-13T12:52:32.123Z",
            "memo": "memo6",
            "original_amount": "original_amount6",
            "applied_amount": "applied_amount6",
            "payment_method": {
              "details": "details0",
              "kind": "kind8",
              "memo": "memo4",
              "type": "type0",
              "card_brand": "card_brand6",
              "card_expiration": "card_expiration6",
              "last_four": "last_four4",
              "masked_card_number": "masked_card_number8"
            },
            "transaction_id": 232,
            "prepayment": false,
            "gateway_handle": "gateway_handle6",
            "gateway_used": "gateway_used4",
            "gateway_transaction_id": "gateway_transaction_id6"
          },
          {
            "transaction_time": "2016-03-13T12:52:32.123Z",
            "memo": "memo6",
            "original_amount": "original_amount6",
            "applied_amount": "applied_amount6",
            "payment_method": {
              "details": "details0",
              "kind": "kind8",
              "memo": "memo4",
              "type": "type0",
              "card_brand": "card_brand6",
              "card_expiration": "card_expiration6",
              "last_four": "last_four4",
              "masked_card_number": "masked_card_number8"
            },
            "transaction_id": 232,
            "prepayment": false,
            "gateway_handle": "gateway_handle6",
            "gateway_used": "gateway_used4",
            "gateway_transaction_id": "gateway_transaction_id6"
          },
          {
            "transaction_time": "2016-03-13T12:52:32.123Z",
            "memo": "memo6",
            "original_amount": "original_amount6",
            "applied_amount": "applied_amount6",
            "payment_method": {
              "details": "details0",
              "kind": "kind8",
              "memo": "memo4",
              "type": "type0",
              "card_brand": "card_brand6",
              "card_expiration": "card_expiration6",
              "last_four": "last_four4",
              "masked_card_number": "masked_card_number8"
            },
            "transaction_id": 232,
            "prepayment": false,
            "gateway_handle": "gateway_handle6",
            "gateway_used": "gateway_used4",
            "gateway_transaction_id": "gateway_transaction_id6"
          }
        ],
        "custom_fields": [
          {
            "owner_id": 34,
            "owner_type": "Customer",
            "name": "name2",
            "value": "value4",
            "metadatum_id": 34
          },
          {
            "owner_id": 34,
            "owner_type": "Customer",
            "name": "name2",
            "value": "value4",
            "metadatum_id": 34
          },
          {
            "owner_id": 34,
            "owner_type": "Customer",
            "name": "name2",
            "value": "value4",
            "metadatum_id": 34
          }
        ],
        "display_settings": {
          "hide_zero_subtotal_lines": false,
          "include_discounts_on_lines": false
        },
        "public_url": "public_url2",
        "previous_balance_data": {
          "captured_at": "2016-03-13T12:52:32.123Z",
          "invoices": [
            {
              "uid": "uid6",
              "number": "number6",
              "outstanding_amount": "outstanding_amount8"
            },
            {
              "uid": "uid6",
              "number": "number6",
              "outstanding_amount": "outstanding_amount8"
            }
          ]
        }
      }
    }
  ],
  "page": 184,
  "per_page": 96,
  "total_pages": 194
}
```

