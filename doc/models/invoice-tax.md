
# Invoice Tax

## Structure

`InvoiceTax`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `title` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `source_type` | `String` | Optional | - |
| `source_id` | `Integer` | Optional | - |
| `percentage` | `String` | Optional | - |
| `taxable_amount` | `String` | Optional | - |
| `tax_amount` | `String` | Optional | - |
| `transaction_id` | `Integer` | Optional | - |
| `line_item_breakouts` | [`Array<InvoiceTaxBreakout>`](../../doc/models/invoice-tax-breakout.md) | Optional | - |
| `tax_component_breakouts` | [`Array<InvoiceTaxComponentBreakout>`](../../doc/models/invoice-tax-component-breakout.md) | Optional | - |

## Example (as JSON)

```json
{
  "uid": "uid8",
  "title": "title6",
  "description": "description2",
  "source_type": "source_type8",
  "source_id": 164
}
```

