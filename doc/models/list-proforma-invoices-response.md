
# List Proforma Invoices Response

## Structure

`ListProformaInvoicesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `proforma_invoices` | [`Array<ProformaInvoice>`](../../doc/models/proforma-invoice.md) | Optional | - |
| `meta` | [`ListProformaInvoicesMeta`](../../doc/models/list-proforma-invoices-meta.md) | Optional | - |

## Example (as JSON)

```json
{
  "proforma_invoices": [
    {
      "uid": "uid0",
      "site_id": 140,
      "customer_id": 252,
      "subscription_id": 68,
      "number": 56,
      "sequence_number": 250,
      "created_at": "2016-03-13T12:52:32.123Z",
      "delivery_date": "2016-03-13",
      "status": "archived",
      "collection_method": "automatic",
      "payment_instructions": "payment_instructions2",
      "currency": "currency0",
      "consolidation_level": "parent",
      "product_name": "product_name6",
      "product_family_name": "product_family_name4",
      "role": "unset",
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
      "memo": "memo4",
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
      "subtotal_amount": "subtotal_amount6",
      "discount_amount": "discount_amount6",
      "tax_amount": "tax_amount6",
      "total_amount": "total_amount6",
      "credit_amount": "credit_amount8",
      "paid_amount": "paid_amount8",
      "refund_amount": "refund_amount4",
      "due_amount": "due_amount2",
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
          "code": "code2",
          "source_type": "Coupon",
          "discount_type": "percentage",
          "eligible_amount": "eligible_amount6",
          "discount_amount": "discount_amount8",
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
          "code": "code2",
          "source_type": "Coupon",
          "discount_type": "percentage",
          "eligible_amount": "eligible_amount6",
          "discount_amount": "discount_amount8",
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
          "code": "code2",
          "source_type": "Coupon",
          "discount_type": "percentage",
          "eligible_amount": "eligible_amount6",
          "discount_amount": "discount_amount8",
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
          "source_type": "Tax",
          "percentage": "percentage8",
          "taxable_amount": "taxable_amount4",
          "tax_amount": "tax_amount6",
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
          ]
        },
        {
          "uid": "uid0",
          "title": "title6",
          "source_type": "Tax",
          "percentage": "percentage8",
          "taxable_amount": "taxable_amount4",
          "tax_amount": "tax_amount6",
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
          ]
        }
      ],
      "credits": [
        {
          "uid": "uid0",
          "memo": "memo4",
          "original_amount": "original_amount4",
          "applied_amount": "applied_amount2"
        },
        {
          "uid": "uid0",
          "memo": "memo4",
          "original_amount": "original_amount4",
          "applied_amount": "applied_amount2"
        }
      ],
      "payments": [
        {
          "memo": "memo6",
          "original_amount": "original_amount6",
          "applied_amount": "applied_amount6",
          "prepayment": false
        },
        {
          "memo": "memo6",
          "original_amount": "original_amount6",
          "applied_amount": "applied_amount6",
          "prepayment": false
        },
        {
          "memo": "memo6",
          "original_amount": "original_amount6",
          "applied_amount": "applied_amount6",
          "prepayment": false
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
      "public_url": "public_url8"
    },
    {
      "uid": "uid0",
      "site_id": 140,
      "customer_id": 252,
      "subscription_id": 68,
      "number": 56,
      "sequence_number": 250,
      "created_at": "2016-03-13T12:52:32.123Z",
      "delivery_date": "2016-03-13",
      "status": "archived",
      "collection_method": "automatic",
      "payment_instructions": "payment_instructions2",
      "currency": "currency0",
      "consolidation_level": "parent",
      "product_name": "product_name6",
      "product_family_name": "product_family_name4",
      "role": "unset",
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
      "memo": "memo4",
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
      "subtotal_amount": "subtotal_amount6",
      "discount_amount": "discount_amount6",
      "tax_amount": "tax_amount6",
      "total_amount": "total_amount6",
      "credit_amount": "credit_amount8",
      "paid_amount": "paid_amount8",
      "refund_amount": "refund_amount4",
      "due_amount": "due_amount2",
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
          "code": "code2",
          "source_type": "Coupon",
          "discount_type": "percentage",
          "eligible_amount": "eligible_amount6",
          "discount_amount": "discount_amount8",
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
          "code": "code2",
          "source_type": "Coupon",
          "discount_type": "percentage",
          "eligible_amount": "eligible_amount6",
          "discount_amount": "discount_amount8",
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
          "code": "code2",
          "source_type": "Coupon",
          "discount_type": "percentage",
          "eligible_amount": "eligible_amount6",
          "discount_amount": "discount_amount8",
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
          "source_type": "Tax",
          "percentage": "percentage8",
          "taxable_amount": "taxable_amount4",
          "tax_amount": "tax_amount6",
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
          ]
        },
        {
          "uid": "uid0",
          "title": "title6",
          "source_type": "Tax",
          "percentage": "percentage8",
          "taxable_amount": "taxable_amount4",
          "tax_amount": "tax_amount6",
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
          ]
        }
      ],
      "credits": [
        {
          "uid": "uid0",
          "memo": "memo4",
          "original_amount": "original_amount4",
          "applied_amount": "applied_amount2"
        },
        {
          "uid": "uid0",
          "memo": "memo4",
          "original_amount": "original_amount4",
          "applied_amount": "applied_amount2"
        }
      ],
      "payments": [
        {
          "memo": "memo6",
          "original_amount": "original_amount6",
          "applied_amount": "applied_amount6",
          "prepayment": false
        },
        {
          "memo": "memo6",
          "original_amount": "original_amount6",
          "applied_amount": "applied_amount6",
          "prepayment": false
        },
        {
          "memo": "memo6",
          "original_amount": "original_amount6",
          "applied_amount": "applied_amount6",
          "prepayment": false
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
      "public_url": "public_url8"
    },
    {
      "uid": "uid0",
      "site_id": 140,
      "customer_id": 252,
      "subscription_id": 68,
      "number": 56,
      "sequence_number": 250,
      "created_at": "2016-03-13T12:52:32.123Z",
      "delivery_date": "2016-03-13",
      "status": "archived",
      "collection_method": "automatic",
      "payment_instructions": "payment_instructions2",
      "currency": "currency0",
      "consolidation_level": "parent",
      "product_name": "product_name6",
      "product_family_name": "product_family_name4",
      "role": "unset",
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
      "memo": "memo4",
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
      "subtotal_amount": "subtotal_amount6",
      "discount_amount": "discount_amount6",
      "tax_amount": "tax_amount6",
      "total_amount": "total_amount6",
      "credit_amount": "credit_amount8",
      "paid_amount": "paid_amount8",
      "refund_amount": "refund_amount4",
      "due_amount": "due_amount2",
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
          "code": "code2",
          "source_type": "Coupon",
          "discount_type": "percentage",
          "eligible_amount": "eligible_amount6",
          "discount_amount": "discount_amount8",
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
          "code": "code2",
          "source_type": "Coupon",
          "discount_type": "percentage",
          "eligible_amount": "eligible_amount6",
          "discount_amount": "discount_amount8",
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
          "code": "code2",
          "source_type": "Coupon",
          "discount_type": "percentage",
          "eligible_amount": "eligible_amount6",
          "discount_amount": "discount_amount8",
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
          "source_type": "Tax",
          "percentage": "percentage8",
          "taxable_amount": "taxable_amount4",
          "tax_amount": "tax_amount6",
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
          ]
        },
        {
          "uid": "uid0",
          "title": "title6",
          "source_type": "Tax",
          "percentage": "percentage8",
          "taxable_amount": "taxable_amount4",
          "tax_amount": "tax_amount6",
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
          ]
        }
      ],
      "credits": [
        {
          "uid": "uid0",
          "memo": "memo4",
          "original_amount": "original_amount4",
          "applied_amount": "applied_amount2"
        },
        {
          "uid": "uid0",
          "memo": "memo4",
          "original_amount": "original_amount4",
          "applied_amount": "applied_amount2"
        }
      ],
      "payments": [
        {
          "memo": "memo6",
          "original_amount": "original_amount6",
          "applied_amount": "applied_amount6",
          "prepayment": false
        },
        {
          "memo": "memo6",
          "original_amount": "original_amount6",
          "applied_amount": "applied_amount6",
          "prepayment": false
        },
        {
          "memo": "memo6",
          "original_amount": "original_amount6",
          "applied_amount": "applied_amount6",
          "prepayment": false
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
      "public_url": "public_url8"
    }
  ],
  "meta": {
    "total_count": 150,
    "current_page": 126,
    "total_pages": 138,
    "status_code": 168
  }
}
```

