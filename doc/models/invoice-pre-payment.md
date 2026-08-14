
# Invoice Pre Payment

## Structure

`InvoicePrePayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `Integer` | Optional | The subscription id for the prepayment account |
| `amount_in_cents` | `Integer` | Optional | The amount in cents of the prepayment that was created as a result of this payment. |
| `ending_balance_in_cents` | `Integer` | Optional | The total balance of the prepayment account for this subscription including any prior prepayments |

## Example

```ruby
invoice_pre_payment = InvoicePrePayment.new(
  subscription_id: 40,
  amount_in_cents: 240,
  ending_balance_in_cents: 56
)
```

