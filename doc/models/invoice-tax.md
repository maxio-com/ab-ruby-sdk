
# Invoice Tax

## Structure

`InvoiceTax`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `title` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `source_type` | [`ProformaInvoiceTaxSourceType`](../../doc/models/proforma-invoice-tax-source-type.md) | Optional | - |
| `source_id` | `Integer` | Optional | - |
| `percentage` | `String` | Optional | - |
| `taxable_amount` | `String` | Optional | - |
| `tax_amount` | `String` | Optional | - |
| `transaction_id` | `Integer` | Optional | - |
| `line_item_breakouts` | [`Array[InvoiceTaxBreakout]`](../../doc/models/invoice-tax-breakout.md) | Optional | - |
| `tax_component_breakouts` | [`Array[InvoiceTaxComponentBreakout]`](../../doc/models/invoice-tax-component-breakout.md) | Optional | - |
| `eu_vat` | `TrueClass \| FalseClass` | Optional | - |
| `type` | `String` | Optional | - |
| `tax_exempt_amount` | `String` | Optional | - |

## Example

```ruby
invoice_tax = InvoiceTax.new(
  uid: 'uid0',
  title: 'title4',
  description: 'description0',
  source_type: ProformaInvoiceTaxSourceType::TAX,
  source_id: 216
)
```

