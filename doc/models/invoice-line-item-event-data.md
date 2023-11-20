
# Invoice Line Item Event Data

## Structure

`InvoiceLineItemEventData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `title` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `quantity` | `Integer` | Optional | - |
| `quantity_delta` | `Integer` | Optional | - |
| `unit_price` | `String` | Optional | - |
| `period_range_start` | `String` | Optional | - |
| `period_range_end` | `String` | Optional | - |
| `amount` | `String` | Optional | - |
| `line_references` | `String` | Optional | - |
| `pricing_details_index` | `Integer` | Optional | - |
| `pricing_details` | [`Array<InvoiceLineItemPricingDetail>`](../../doc/models/invoice-line-item-pricing-detail.md) | Optional | - |
| `tax_code` | `String` | Optional | - |
| `tax_amount` | `String` | Optional | - |
| `product_id` | `Integer` | Optional | - |
| `product_price_point_id` | `Integer` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |
| `component_id` | `Integer` | Optional | - |
| `billing_schedule_item_id` | `Integer` | Optional | - |
| `custom_item` | `TrueClass \| FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "uid": "uid4",
  "title": "title0",
  "description": "description6",
  "quantity": 40,
  "quantity_delta": 114
}
```

