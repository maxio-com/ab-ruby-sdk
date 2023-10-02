
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

## Example (as JSON)

```json
{
  "memo": "memo4",
  "original_amount": "original_amount4",
  "applied_amount": "applied_amount8",
  "prepayment": false
}
```

