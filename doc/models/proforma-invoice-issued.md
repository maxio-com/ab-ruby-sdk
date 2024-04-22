
# Proforma Invoice Issued

## Structure

`ProformaInvoiceIssued`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Required | - |
| `number` | `String` | Required | - |
| `role` | `String` | Required | - |
| `delivery_date` | `Date` | Required | - |
| `created_at` | `DateTime` | Required | - |
| `due_amount` | `String` | Required | - |
| `paid_amount` | `String` | Required | - |
| `tax_amount` | `String` | Required | - |
| `total_amount` | `String` | Required | - |
| `product_name` | `String` | Required | - |
| `line_items` | [`Array<InvoiceLineItemEventData>`](../../doc/models/invoice-line-item-event-data.md) | Required | - |

## Example (as JSON)

```json
{
  "uid": "uid0",
  "number": "number2",
  "role": "role6",
  "delivery_date": "2016-03-13",
  "created_at": "2016-03-13T12:52:32.123Z",
  "due_amount": "due_amount2",
  "paid_amount": "paid_amount8",
  "tax_amount": "tax_amount6",
  "total_amount": "total_amount6",
  "product_name": "product_name6",
  "line_items": [
    {
      "uid": "uid8",
      "title": "title4",
      "description": "description8",
      "quantity": 102,
      "quantity_delta": 204,
      "unit_price": "unit_price6",
      "period_range_start": "period_range_start2",
      "period_range_end": "period_range_end0",
      "amount": "amount0",
      "line_references": "line_references8",
      "pricing_details_index": 40,
      "pricing_details": [
        {
          "label": "label0",
          "amount": "amount2"
        },
        {
          "label": "label0",
          "amount": "amount2"
        },
        {
          "label": "label0",
          "amount": "amount2"
        }
      ],
      "tax_code": "tax_code6",
      "tax_amount": "tax_amount8",
      "product_id": 88,
      "product_price_point_id": 12,
      "price_point_id": 232,
      "component_id": 0,
      "billing_schedule_item_id": 236,
      "custom_item": false
    }
  ]
}
```

