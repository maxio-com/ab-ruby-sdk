
# Proforma Invoice Payment

## Structure

`ProformaInvoicePayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `memo` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `original_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `applied_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `prepayment` | `TrueClass \| FalseClass` | Optional | - |

## Example

```ruby
proforma_invoice_payment = ProformaInvoicePayment.new(
  memo: 'memo2',
  original_amount: 'original_amount2',
  applied_amount: 'applied_amount0',
  prepayment: false
)
```

