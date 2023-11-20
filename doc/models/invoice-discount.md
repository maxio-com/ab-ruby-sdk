
# Invoice Discount

## Structure

`InvoiceDiscount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `title` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `code` | `String` | Optional | - |
| `source_type` | `String` | Optional | - |
| `source_id` | `Integer` | Optional | - |
| `discount_type` | `String` | Optional | - |
| `percentage` | `String` | Optional | - |
| `eligible_amount` | `String` | Optional | - |
| `discount_amount` | `String` | Optional | - |
| `transaction_id` | `Integer` | Optional | - |
| `line_item_breakouts` | [`Array<InvoiceDiscountBreakout>`](../../doc/models/invoice-discount-breakout.md) | Optional | - |

## Example (as JSON)

```json
{
  "uid": "uid0",
  "title": "title4",
  "description": "description0",
  "code": "code8",
  "source_type": "source_type0"
}
```

