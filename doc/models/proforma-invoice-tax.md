
# Proforma Invoice Tax

## Structure

`ProformaInvoiceTax`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `title` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `source_type` | [`ProformaInvoiceTaxSourceType`](../../doc/models/proforma-invoice-tax-source-type.md) | Optional | - |
| `percentage` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `taxable_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `tax_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `line_item_breakouts` | [`Array[InvoiceTaxBreakout]`](../../doc/models/invoice-tax-breakout.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |

## Example

```ruby
proforma_invoice_tax = ProformaInvoiceTax.new(
  uid: 'uid4',
  title: 'title0',
  source_type: ProformaInvoiceTaxSourceType::TAX,
  percentage: 'percentage2',
  taxable_amount: 'taxable_amount8'
)
```

