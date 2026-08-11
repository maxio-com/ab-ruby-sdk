
# Invoice Payment Method

## Structure

`InvoicePaymentMethod`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `details` | `String` | Optional | - |
| `kind` | `String` | Optional | - |
| `memo` | `String` | Optional | - |
| `type` | `String` | Optional | - |
| `card_brand` | `String` | Optional | - |
| `card_expiration` | `String` | Optional | - |
| `last_four` | `String` | Optional | - |
| `masked_card_number` | `String` | Optional | - |

## Example

```ruby
invoice_payment_method = InvoicePaymentMethod.new(
  details: 'details2',
  kind: 'kind0',
  memo: 'memo6',
  type: 'type2',
  card_brand: 'card_brand4'
)
```

