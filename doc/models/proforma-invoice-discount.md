
# Proforma Invoice Discount

## Structure

`ProformaInvoiceDiscount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `title` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `source_type` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `discount_type` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `eligible_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `discount_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `line_item_breakouts` | [`Array<ProformaInvoiceDiscountBreakout>`](../../doc/models/proforma-invoice-discount-breakout.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "title": "title8",
  "source_type": "source_type2",
  "discount_type": "discount_type0",
  "eligible_amount": "eligible_amount4",
  "discount_amount": "discount_amount6"
}
```

