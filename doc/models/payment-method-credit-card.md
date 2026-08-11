
# Payment Method Credit Card

## Structure

`PaymentMethodCreditCard`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_brand` | `String` | Required | - |
| `card_expiration` | `String` | Optional | - |
| `last_four` | `String` | Optional | - |
| `masked_card_number` | `String` | Required | - |
| `type` | [`InvoiceEventPaymentMethod`](../../doc/models/invoice-event-payment-method.md) | Required | - |

## Example

```ruby
payment_method_credit_card = PaymentMethodCreditCard.new(
  card_brand: 'card_brand2',
  masked_card_number: 'masked_card_number2',
  type: InvoiceEventPaymentMethod::CREDIT_CARD,
  card_expiration: 'card_expiration0',
  last_four: 'last_four8'
)
```

