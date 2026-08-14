
# Proforma Invoice Credit

## Structure

`ProformaInvoiceCredit`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `memo` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `original_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `applied_amount` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |

## Example

```ruby
proforma_invoice_credit = ProformaInvoiceCredit.new(
  uid: 'uid0',
  memo: 'memo4',
  original_amount: 'original_amount4',
  applied_amount: 'applied_amount8'
)
```

