
# Proforma Invoice Discount

## Structure

`ProformaInvoiceDiscount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `title` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `code` | `String` | Optional | - |
| `source_type` | [`ProformaInvoiceDiscountSourceType`](../../doc/models/proforma-invoice-discount-source-type.md) | Optional | - |
| `discount_type` | [`InvoiceDiscountType`](../../doc/models/invoice-discount-type.md) | Optional | - |
| `eligible_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `discount_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `line_item_breakouts` | [`Array[InvoiceDiscountBreakout]`](../../doc/models/invoice-discount-breakout.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |

## Example

```ruby
proforma_invoice_discount = ProformaInvoiceDiscount.new(
  uid: 'uid0',
  title: 'title6',
  code: 'code8',
  source_type: ProformaInvoiceDiscountSourceType::COUPON,
  discount_type: InvoiceDiscountType::ROLLOVER
)
```

