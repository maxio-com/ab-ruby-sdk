
# Invoice-Event-Payment

A nested data structure detailing the method of payment

## Data Type

`PaymentMethodApplePay | PaymentMethodBankAccount | PaymentMethodCreditCard | PaymentMethodExternal | PaymentMethodPaypal`

## Cases

| Type |
|  --- |
| [`PaymentMethodApplePay`](../../../doc/models/payment-method-apple-pay.md) |
| [`PaymentMethodBankAccount`](../../../doc/models/payment-method-bank-account.md) |
| [`PaymentMethodCreditCard`](../../../doc/models/payment-method-credit-card.md) |
| [`PaymentMethodExternal`](../../../doc/models/payment-method-external.md) |
| [`PaymentMethodPaypal`](../../../doc/models/payment-method-paypal.md) |

## PaymentMethodApplePay

### Initialization Code

#### Example

```ruby
value = PaymentMethodApplePay.new(
  type: InvoiceEventPaymentMethod::APPLE_PAY
)
```

## PaymentMethodBankAccount

### Initialization Code

#### Example

```ruby
value = PaymentMethodBankAccount.new(
  masked_account_number: 'masked_account_number2',
  masked_routing_number: 'masked_routing_number2',
  type: InvoiceEventPaymentMethod::BANK_ACCOUNT
)
```

## PaymentMethodCreditCard

### Initialization Code

#### Example

```ruby
value = PaymentMethodCreditCard.new(
  card_brand: 'card_brand4',
  masked_card_number: 'masked_card_number0',
  type: InvoiceEventPaymentMethod::CREDIT_CARD
)
```

## PaymentMethodExternal

### Initialization Code

#### Example

```ruby
value = PaymentMethodExternal.new(
  details: 'details4',
  kind: 'kind2',
  memo: 'memo8',
  type: InvoiceEventPaymentMethod::EXTERNAL
)
```

## PaymentMethodPaypal

### Initialization Code

#### Example

```ruby
value = PaymentMethodPaypal.new(
  email: 'email2',
  type: InvoiceEventPaymentMethod::PAYPAL_ACCOUNT
)
```

