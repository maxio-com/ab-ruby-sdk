
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
| `source_type` | [`InvoiceDiscountSourceType`](../../doc/models/invoice-discount-source-type.md) | Optional | - |
| `source_id` | `Integer` | Optional | - |
| `discount_type` | [`InvoiceDiscountType`](../../doc/models/invoice-discount-type.md) | Optional | - |
| `percentage` | `String` | Optional | - |
| `eligible_amount` | `String` | Optional | - |
| `discount_amount` | `String` | Optional | - |
| `transaction_id` | `Integer` | Optional | - |
| `line_item_breakouts` | [`Array[InvoiceDiscountBreakout]`](../../doc/models/invoice-discount-breakout.md) | Optional | - |

## Example

```ruby
invoice_discount = InvoiceDiscount.new(
  uid: 'uid2',
  title: 'title2',
  description: 'description8',
  code: 'code0',
  source_type: InvoiceDiscountSourceType::REFERRAL
)
```

