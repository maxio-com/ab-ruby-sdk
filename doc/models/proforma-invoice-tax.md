
# Proforma Invoice Tax

## Structure

`ProformaInvoiceTax`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `title` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `source_type` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `percentage` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `taxable_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `tax_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `line_item_breakouts` | [`Array<ProformaInvoiceTaxBreakout>`](../../doc/models/proforma-invoice-tax-breakout.md) | Optional | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |

## Example (as JSON)

```json
{
  "uid": "uid8",
  "title": "title4",
  "source_type": "source_type8",
  "percentage": "percentage6",
  "taxable_amount": "taxable_amount2"
}
```

