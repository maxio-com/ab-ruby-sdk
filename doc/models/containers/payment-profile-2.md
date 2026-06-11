
# Payment-Profile 2

## Data Type

`ApplePayPaymentProfile | BankAccountPaymentProfile | CreditCardPaymentProfile | PaypalPaymentProfile`

## Cases

| Type |
|  --- |
| [`ApplePayPaymentProfile`](../../../doc/models/apple-pay-payment-profile.md) |
| [`BankAccountPaymentProfile`](../../../doc/models/bank-account-payment-profile.md) |
| [`CreditCardPaymentProfile`](../../../doc/models/credit-card-payment-profile.md) |
| [`PaypalPaymentProfile`](../../../doc/models/paypal-payment-profile.md) |

## ApplePayPaymentProfile

### Initialization Code

#### Example

```ruby
value = ApplePayPaymentProfile.new(
  payment_type: PaymentType::APPLE_PAY
)
```

## BankAccountPaymentProfile

### Initialization Code

#### Example

```ruby
value = BankAccountPaymentProfile.new(
  payment_type: PaymentType::BANK_ACCOUNT,
  verified: false
)
```

## CreditCardPaymentProfile

### Initialization Code

#### Example

```ruby
value = CreditCardPaymentProfile.new(
  payment_type: PaymentType::CREDIT_CARD,
  id: 10088716,
  first_name: 'Test',
  last_name: 'Subscription',
  masked_card_number: 'XXXX-XXXX-XXXX-1',
  card_type: CardType::BOGUS,
  expiration_month: 1,
  expiration_year: 2022,
  customer_id: 14543792,
  current_vault: CreditCardVault::BOGUS,
  vault_token: '1',
  billing_address: '123 Montana Way',
  billing_city: 'Billings',
  billing_state: 'MT',
  billing_zip: '59101',
  billing_country: 'US',
  customer_vault_token: 'customer_vault_token2',
  billing_address_2: '',
  site_gateway_setting_id: 1,
  gateway_handle: 'gateway_handle8'
)
```

## PaypalPaymentProfile

### Initialization Code

#### Example

```ruby
value = PaypalPaymentProfile.new(
  payment_type: PaymentType::PAYPAL_ACCOUNT
)
```

