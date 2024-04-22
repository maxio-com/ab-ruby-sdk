
# Invoice Issued

## Structure

`InvoiceIssued`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Required | - |
| `number` | `String` | Required | - |
| `role` | `String` | Required | - |
| `due_date` | `Date` | Required | - |
| `issue_date` | `String` | Required | Invoice issue date. Can be an empty string if value is missing. |
| `paid_date` | `String` | Required | Paid date. Can be an empty string if value is missing. |
| `due_amount` | `String` | Required | - |
| `paid_amount` | `String` | Required | - |
| `tax_amount` | `String` | Required | - |
| `refund_amount` | `String` | Required | - |
| `total_amount` | `String` | Required | - |
| `status_amount` | `String` | Required | - |
| `product_name` | `String` | Required | - |
| `consolidation_level` | `String` | Required | - |
| `line_items` | [`Array<InvoiceLineItemEventData>`](../../doc/models/invoice-line-item-event-data.md) | Required | - |

## Example (as JSON)

```json
{
  "uid": "uid4",
  "number": "number8",
  "role": "role2",
  "due_date": "2016-03-13",
  "issue_date": "issue_date0",
  "paid_date": "paid_date6",
  "due_amount": "due_amount6",
  "paid_amount": "paid_amount4",
  "tax_amount": "tax_amount2",
  "refund_amount": "refund_amount0",
  "total_amount": "total_amount0",
  "status_amount": "status_amount4",
  "product_name": "product_name0",
  "consolidation_level": "consolidation_level4",
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

