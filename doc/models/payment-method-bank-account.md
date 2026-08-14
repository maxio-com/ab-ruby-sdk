
# Payment Method Bank Account

## Structure

`PaymentMethodBankAccount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `masked_account_number` | `String` | Required | - |
| `masked_routing_number` | `String` | Required | - |
| `type` | [`InvoiceEventPaymentMethod`](../../doc/models/invoice-event-payment-method.md) | Required | - |

## Example

```ruby
payment_method_bank_account = PaymentMethodBankAccount.new(
  masked_account_number: 'masked_account_number6',
  masked_routing_number: 'masked_routing_number6',
  type: InvoiceEventPaymentMethod::BANK_ACCOUNT
)
```

