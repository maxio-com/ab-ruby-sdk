
# Event Event Specific Data

## Data Type

`SubscriptionProductChange | SubscriptionStateChange | PaymentRelatedEvents | RefundSuccess | ComponentAllocationChange | MeteredUsage | PrepaidUsage | DunningStepReached | InvoiceIssued | PendingCancellationChange | PrepaidSubscriptionBalanceChanged | ProformaInvoiceIssued | SubscriptionGroupSignupEventData | CreditAccountBalanceChanged | PrepaymentAccountBalanceChanged | PaymentCollectionMethodChanged | ItemPricePointChanged | CustomFieldValueChange`

## Cases

| Type |
|  --- |
| [`SubscriptionProductChange`](../../../doc/models/subscription-product-change.md) |
| [`SubscriptionStateChange`](../../../doc/models/subscription-state-change.md) |
| [`PaymentRelatedEvents`](../../../doc/models/payment-related-events.md) |
| [`RefundSuccess`](../../../doc/models/refund-success.md) |
| [`ComponentAllocationChange`](../../../doc/models/component-allocation-change.md) |
| [`MeteredUsage`](../../../doc/models/metered-usage.md) |
| [`PrepaidUsage`](../../../doc/models/prepaid-usage.md) |
| [`DunningStepReached`](../../../doc/models/dunning-step-reached.md) |
| [`InvoiceIssued`](../../../doc/models/invoice-issued.md) |
| [`PendingCancellationChange`](../../../doc/models/pending-cancellation-change.md) |
| [`PrepaidSubscriptionBalanceChanged`](../../../doc/models/prepaid-subscription-balance-changed.md) |
| [`ProformaInvoiceIssued`](../../../doc/models/proforma-invoice-issued.md) |
| [`SubscriptionGroupSignupEventData`](../../../doc/models/subscription-group-signup-event-data.md) |
| [`CreditAccountBalanceChanged`](../../../doc/models/credit-account-balance-changed.md) |
| [`PrepaymentAccountBalanceChanged`](../../../doc/models/prepayment-account-balance-changed.md) |
| [`PaymentCollectionMethodChanged`](../../../doc/models/payment-collection-method-changed.md) |
| [`ItemPricePointChanged`](../../../doc/models/item-price-point-changed.md) |
| [`CustomFieldValueChange`](../../../doc/models/custom-field-value-change.md) |

## SubscriptionProductChange

### Initialization Code

#### Example

```ruby
value = SubscriptionProductChange.new(
  previous_product_id: 126,
  new_product_id: 12
)
```

## SubscriptionStateChange

### Initialization Code

#### Example

```ruby
value = SubscriptionStateChange.new(
  previous_subscription_state: 'previous_subscription_state2',
  new_subscription_state: 'new_subscription_state6'
)
```

## PaymentRelatedEvents

### Initialization Code

#### Example

```ruby
value = PaymentRelatedEvents.new(
  product_id: 42,
  account_transaction_id: 58
)
```

## RefundSuccess

### Initialization Code

#### Example

```ruby
value = RefundSuccess.new(
  refund_id: 12,
  gateway_transaction_id: 182,
  product_id: 168
)
```

## ComponentAllocationChange

### Initialization Code

#### Example

```ruby
value = ComponentAllocationChange.new(
  previous_allocation: 94,
  new_allocation: 102,
  component_id: 88,
  component_handle: 'component_handle8',
  memo: 'memo2',
  allocation_id: 158
)
```

## MeteredUsage

### Initialization Code

#### Example

```ruby
value = MeteredUsage.new(
  previous_unit_balance: 'previous_unit_balance6',
  new_unit_balance: 80,
  usage_quantity: 42,
  component_id: 4,
  component_handle: 'component_handle8',
  memo: 'memo2'
)
```

## PrepaidUsage

### Initialization Code

#### Example

```ruby
value = PrepaidUsage.new(
  previous_unit_balance: 'previous_unit_balance0',
  previous_overage_unit_balance: 'previous_overage_unit_balance4',
  new_unit_balance: 252,
  new_overage_unit_balance: 224,
  usage_quantity: 214,
  overage_usage_quantity: 106,
  component_id: 176,
  component_handle: 'component_handle4',
  memo: 'memo8',
  allocation_details: [
    PrepaidUsageAllocationDetail.new
  ]
)
```

## DunningStepReached

### Initialization Code

#### Example

```ruby
value = DunningStepReached.new(
  dunner: DunnerData.new(
    state: 'state8',
    subscription_id: 194,
    revenue_at_risk_in_cents: 98,
    created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    attempts: 42,
    last_attempted_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  ),
  current_step: DunningStepData.new(
    day_threshold: 198,
    action: 'action4',
    send_email: false,
    send_bcc_email: false,
    send_sms: false
  ),
  next_step: DunningStepData.new(
    day_threshold: 30,
    action: 'action4',
    send_email: false,
    send_bcc_email: false,
    send_sms: false
  )
)
```

## InvoiceIssued

### Initialization Code

#### Example

```ruby
value = InvoiceIssued.new(
  uid: 'uid4',
  number: 'number8',
  role: 'role2',
  due_date: Date.iso8601('2016-03-13'),
  issue_date: 'issue_date0',
  paid_date: 'paid_date6',
  due_amount: 'due_amount6',
  paid_amount: 'paid_amount4',
  tax_amount: 'tax_amount2',
  refund_amount: 'refund_amount0',
  total_amount: 'total_amount0',
  status_amount: 'status_amount4',
  product_name: 'product_name0',
  consolidation_level: 'consolidation_level4',
  line_items: [
    InvoiceLineItemEventData.new
  ]
)
```

## PendingCancellationChange

### Initialization Code

#### Example

```ruby
value = PendingCancellationChange.new(
  cancellation_state: 'cancellation_state8',
  cancels_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

## PrepaidSubscriptionBalanceChanged

### Initialization Code

#### Example

```ruby
value = PrepaidSubscriptionBalanceChanged.new(
  reason: 'reason8',
  current_account_balance_in_cents: 250,
  prepayment_account_balance_in_cents: 44,
  current_usage_amount_in_cents: 242
)
```

## ProformaInvoiceIssued

### Initialization Code

#### Example

```ruby
value = ProformaInvoiceIssued.new(
  uid: 'uid0',
  number: 'number2',
  role: 'role6',
  delivery_date: Date.iso8601('2016-03-13'),
  created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  due_amount: 'due_amount2',
  paid_amount: 'paid_amount8',
  tax_amount: 'tax_amount6',
  total_amount: 'total_amount6',
  product_name: 'product_name6',
  line_items: [
    InvoiceLineItemEventData.new
  ]
)
```

## SubscriptionGroupSignupEventData

### Initialization Code

#### Example

```ruby
value = SubscriptionGroupSignupEventData.new(
  subscription_group: SubscriptionGroupSignupFailureData.new,
  customer: Customer.new
)
```

## CreditAccountBalanceChanged

### Initialization Code

#### Example

```ruby
value = CreditAccountBalanceChanged.new(
  reason: 'reason8',
  service_credit_account_balance_in_cents: 10,
  service_credit_balance_change_in_cents: 116,
  currency_code: 'currency_code8',
  at_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

## PrepaymentAccountBalanceChanged

### Initialization Code

#### Example

```ruby
value = PrepaymentAccountBalanceChanged.new(
  reason: 'reason4',
  prepayment_account_balance_in_cents: 182,
  prepayment_balance_change_in_cents: 206,
  currency_code: 'currency_code4'
)
```

## PaymentCollectionMethodChanged

### Initialization Code

#### Example

```ruby
value = PaymentCollectionMethodChanged.new(
  previous_value: 'previous_value4',
  current_value: 'current_value2'
)
```

## ItemPricePointChanged

### Initialization Code

#### Example

```ruby
value = ItemPricePointChanged.new(
  item_id: 66,
  item_type: 'item_type6',
  item_handle: 'item_handle4',
  item_name: 'item_name8',
  previous_price_point: ItemPricePointData.new,
  current_price_point: ItemPricePointData.new
)
```

## CustomFieldValueChange

### Initialization Code

#### Example

```ruby
value = CustomFieldValueChange.new(
  event_type: 'event_type2',
  metafield_name: 'metafield_name6',
  metafield_id: 78,
  old_value: 'old_value2',
  new_value: 'new_value8',
  resource_type: 'resource_type2',
  resource_id: 74
)
```

