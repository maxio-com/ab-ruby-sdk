
# Create Invoice Request

## Structure

`CreateInvoiceRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice` | [`CreateInvoice`](../../doc/models/create-invoice.md) | Required | - |

## Example (as JSON)

```json
{
  "invoice": {
    "issue_date": "2024-01-01",
    "status": "draft",
    "line_items": [
      {
        "title": "title4",
        "quantity": 56.68,
        "unit_price": 39.9,
        "taxable": false,
        "tax_code": "tax_code6",
        "period_range_start": "period_range_start2",
        "period_range_end": "period_range_end0",
        "product_id": "String5",
        "component_id": "String7",
        "price_point_id": "String1",
        "product_price_point_id": "String3",
        "description": "description8"
      },
      {
        "title": "title4",
        "quantity": 56.68,
        "unit_price": 39.9,
        "taxable": false,
        "tax_code": "tax_code6",
        "period_range_start": "period_range_start2",
        "period_range_end": "period_range_end0",
        "product_id": "String5",
        "component_id": "String7",
        "price_point_id": "String1",
        "product_price_point_id": "String3",
        "description": "description8"
      },
      {
        "title": "title4",
        "quantity": 56.68,
        "unit_price": 39.9,
        "taxable": false,
        "tax_code": "tax_code6",
        "period_range_start": "period_range_start2",
        "period_range_end": "period_range_end0",
        "product_id": "String5",
        "component_id": "String7",
        "price_point_id": "String1",
        "product_price_point_id": "String3",
        "description": "description8"
      }
    ],
    "net_terms": 144,
    "payment_instructions": "payment_instructions6",
    "memo": "memo0",
    "seller_address": {
      "first_name": "first_name0",
      "last_name": "last_name8",
      "phone": "phone0",
      "address": "address6",
      "address_2": "address_24",
      "city": "city0",
      "state": "state6",
      "zip": "zip6",
      "country": "country4"
    },
    "billing_address": {
      "first_name": "first_name8",
      "last_name": "last_name6",
      "phone": "phone2",
      "address": "address4",
      "address_2": "address_22",
      "city": "city2",
      "state": "state6",
      "zip": "zip8",
      "country": "country2"
    },
    "shipping_address": {
      "first_name": "first_name0",
      "last_name": "last_name8",
      "phone": "phone0",
      "address": "address6",
      "address_2": "address_24",
      "city": "city0",
      "state": "state6",
      "zip": "zip4",
      "country": "country4"
    },
    "coupons": [
      {
        "code": "code8",
        "percentage": "String9",
        "amount": "String3",
        "description": "description0",
        "product_family_id": "String7",
        "compounding_strategy": "compound"
      },
      {
        "code": "code8",
        "percentage": "String9",
        "amount": "String3",
        "description": "description0",
        "product_family_id": "String7",
        "compounding_strategy": "compound"
      }
    ]
  }
}
```

