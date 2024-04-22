
# Refund Invoice Event Data

Example schema for an `refund_invoice` event

## Structure

`RefundInvoiceEventData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `apply_credit` | `TrueClass \| FalseClass` | Required | If true, credit was created and applied it to the invoice. |
| `consolidation_level` | [`InvoiceConsolidationLevel`](../../doc/models/invoice-consolidation-level.md) | Optional | Consolidation level of the invoice, which is applicable to invoice consolidation.  It will hold one of the following values:<br><br>* "none": A normal invoice with no consolidation.<br>* "child": An invoice segment which has been combined into a consolidated invoice.<br>* "parent": A consolidated invoice, whose contents are composed of invoice segments.<br><br>"Parent" invoices do not have lines of their own, but they have subtotals and totals which aggregate the member invoice segments.<br><br>See also the [invoice consolidation documentation](https://chargify.zendesk.com/hc/en-us/articles/4407746391835). |
| `credit_note_attributes` | [`CreditNote`](../../doc/models/credit-note.md) | Required | - |
| `memo` | `String` | Optional | The refund memo. |
| `original_amount` | `String` | Optional | The full, original amount of the refund. |
| `payment_id` | `Integer` | Required | The ID of the payment transaction to be refunded. |
| `refund_amount` | `String` | Required | The amount of the refund. |
| `refund_id` | `Integer` | Required | The ID of the refund transaction. |
| `transaction_time` | `DateTime` | Required | The time the refund was applied, in ISO 8601 format, i.e. "2019-06-07T17:20:06Z" |

## Example (as JSON)

```json
{
  "apply_credit": false,
  "consolidation_level": "parent",
  "credit_note_attributes": {
    "uid": "uid2",
    "site_id": 72,
    "customer_id": 184,
    "subscription_id": 0,
    "number": "number0",
    "sequence_number": 182,
    "issue_date": "2016-03-13",
    "applied_date": "2016-03-13",
    "status": "open",
    "currency": "currency8",
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
  },
  "memo": "memo0",
  "original_amount": "original_amount0",
  "payment_id": 114,
  "refund_amount": "refund_amount8",
  "refund_id": 158,
  "transaction_time": "2016-03-13T12:52:32.123Z"
}
```

