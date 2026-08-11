
# Invoice Tax Breakout

## Structure

`InvoiceTaxBreakout`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `taxable_amount` | `String` | Optional | - |
| `tax_amount` | `String` | Optional | - |
| `tax_exempt_amount` | `String` | Optional | - |

## Example

```ruby
invoice_tax_breakout = InvoiceTaxBreakout.new(
  uid: 'uid2',
  taxable_amount: 'taxable_amount6',
  tax_amount: 'tax_amount4',
  tax_exempt_amount: 'tax_exempt_amount2'
)
```

