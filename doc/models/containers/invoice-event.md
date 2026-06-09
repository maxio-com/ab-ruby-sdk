
# Invoice-Event

## Data Type

`ApplyCreditNoteEvent | ApplyDebitNoteEvent | ApplyPaymentEvent | BackportInvoiceEvent | ChangeChargebackStatusEvent | ChangeInvoiceCollectionMethodEvent | ChangeInvoiceStatusEvent | CreateCreditNoteEvent | CreateDebitNoteEvent | FailedPaymentEvent | IssueInvoiceEvent | RefundInvoiceEvent | RemovePaymentEvent | VoidInvoiceEvent | VoidRemainderEvent`

## Cases

| Type |
|  --- |
| [`ApplyCreditNoteEvent`](../../../doc/models/apply-credit-note-event.md) |
| [`ApplyDebitNoteEvent`](../../../doc/models/apply-debit-note-event.md) |
| [`ApplyPaymentEvent`](../../../doc/models/apply-payment-event.md) |
| [`BackportInvoiceEvent`](../../../doc/models/backport-invoice-event.md) |
| [`ChangeChargebackStatusEvent`](../../../doc/models/change-chargeback-status-event.md) |
| [`ChangeInvoiceCollectionMethodEvent`](../../../doc/models/change-invoice-collection-method-event.md) |
| [`ChangeInvoiceStatusEvent`](../../../doc/models/change-invoice-status-event.md) |
| [`CreateCreditNoteEvent`](../../../doc/models/create-credit-note-event.md) |
| [`CreateDebitNoteEvent`](../../../doc/models/create-debit-note-event.md) |
| [`FailedPaymentEvent`](../../../doc/models/failed-payment-event.md) |
| [`IssueInvoiceEvent`](../../../doc/models/issue-invoice-event.md) |
| [`RefundInvoiceEvent`](../../../doc/models/refund-invoice-event.md) |
| [`RemovePaymentEvent`](../../../doc/models/remove-payment-event.md) |
| [`VoidInvoiceEvent`](../../../doc/models/void-invoice-event.md) |
| [`VoidRemainderEvent`](../../../doc/models/void-remainder-event.md) |

## ApplyCreditNoteEvent

### Initialization Code

#### Example

```ruby
value = ApplyCreditNoteEvent.new(
  id: 214,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::APPLY_CREDIT_NOTE,
  event_data: ApplyCreditNoteEventData.new(
    uid: 'uid6',
    credit_note_number: 'credit_note_number0',
    credit_note_uid: 'credit_note_uid0',
    original_amount: 'original_amount0',
    applied_amount: 'applied_amount2'
  )
)
```

## ApplyDebitNoteEvent

### Initialization Code

#### Example

```ruby
value = ApplyDebitNoteEvent.new(
  id: 164,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::APPLY_DEBIT_NOTE,
  event_data: ApplyDebitNoteEventData.new(
    debit_note_number: 'debit_note_number6',
    debit_note_uid: 'debit_note_uid2',
    original_amount: 'original_amount0',
    applied_amount: 'applied_amount2'
  )
)
```

## ApplyPaymentEvent

### Initialization Code

#### Example

```ruby
value = ApplyPaymentEvent.new(
  id: 234,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::APPLY_PAYMENT,
  event_data: ApplyPaymentEventData.new(
    consolidation_level: InvoiceConsolidationLevel::CHILD,
    memo: 'memo0',
    original_amount: 'original_amount0',
    applied_amount: 'applied_amount2',
    transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    payment_method: PaymentMethodApplePay.new(
      type: InvoiceEventPaymentMethod::APPLE_PAY
    )
  )
)
```

## BackportInvoiceEvent

### Initialization Code

#### Example

```ruby
value = BackportInvoiceEvent.new(
  id: 78,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::BACKPORT_INVOICE,
  event_data: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  )
)
```

## ChangeChargebackStatusEvent

### Initialization Code

#### Example

```ruby
value = ChangeChargebackStatusEvent.new(
  id: 214,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::CHANGE_CHARGEBACK_STATUS,
  event_data: ChangeChargebackStatusEventData.new(
    chargeback_status: ChargebackStatus::WON
  )
)
```

## ChangeInvoiceCollectionMethodEvent

### Initialization Code

#### Example

```ruby
value = ChangeInvoiceCollectionMethodEvent.new(
  id: 246,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::CHANGE_INVOICE_COLLECTION_METHOD,
  event_data: ChangeInvoiceCollectionMethodEventData.new(
    from_collection_method: 'from_collection_method4',
    to_collection_method: 'to_collection_method8'
  )
)
```

## ChangeInvoiceStatusEvent

### Initialization Code

#### Example

```ruby
value = ChangeInvoiceStatusEvent.new(
  id: 92,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::CHANGE_INVOICE_STATUS,
  event_data: ChangeInvoiceStatusEventData.new(
    from_status: InvoiceStatus::OPEN,
    to_status: InvoiceStatus::PENDING
  )
)
```

## CreateCreditNoteEvent

### Initialization Code

#### Example

```ruby
value = CreateCreditNoteEvent.new(
  id: 28,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::CREATE_CREDIT_NOTE,
  event_data: CreditNote.new
)
```

## CreateDebitNoteEvent

### Initialization Code

#### Example

```ruby
value = CreateDebitNoteEvent.new(
  id: 98,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::CREATE_DEBIT_NOTE,
  event_data: DebitNote.new
)
```

## FailedPaymentEvent

### Initialization Code

#### Example

```ruby
value = FailedPaymentEvent.new(
  id: 120,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::FAILED_PAYMENT,
  event_data: FailedPaymentEventData.new(
    amount_in_cents: 220,
    applied_amount: 194,
    payment_method: InvoicePaymentMethodType::CASH,
    transaction_id: 78
  )
)
```

## IssueInvoiceEvent

### Initialization Code

#### Example

```ruby
value = IssueInvoiceEvent.new(
  id: 130,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::ISSUE_INVOICE,
  event_data: IssueInvoiceEventData.new(
    consolidation_level: InvoiceConsolidationLevel::CHILD,
    from_status: InvoiceStatus::OPEN,
    to_status: InvoiceStatus::PENDING,
    due_amount: 'due_amount8',
    total_amount: 'total_amount2'
  )
)
```

## RefundInvoiceEvent

### Initialization Code

#### Example

```ruby
value = RefundInvoiceEvent.new(
  id: 54,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::REFUND_INVOICE,
  event_data: RefundInvoiceEventData.new(
    apply_credit: false,
    credit_note_attributes: CreditNote.new,
    payment_id: 204,
    refund_amount: 'refund_amount8',
    refund_id: 248,
    transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  )
)
```

## RemovePaymentEvent

### Initialization Code

#### Example

```ruby
value = RemovePaymentEvent.new(
  id: 236,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::REMOVE_PAYMENT,
  event_data: RemovePaymentEventData.new(
    transaction_id: 78,
    memo: 'memo0',
    applied_amount: 'applied_amount2',
    transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    payment_method: PaymentMethodApplePay.new(
      type: InvoiceEventPaymentMethod::APPLE_PAY
    ),
    prepayment: false
  )
)
```

## VoidInvoiceEvent

### Initialization Code

#### Example

```ruby
value = VoidInvoiceEvent.new(
  id: 16,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::VOID_INVOICE,
  event_data: VoidInvoiceEventData.new(
    credit_note_attributes: CreditNote.new,
    memo: 'memo0',
    applied_amount: 'applied_amount2',
    transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    is_advance_invoice: false,
    reason: 'reason2'
  )
)
```

## VoidRemainderEvent

### Initialization Code

#### Example

```ruby
value = VoidRemainderEvent.new(
  id: 128,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::VOID_REMAINDER,
  event_data: VoidRemainderEventData.new(
    credit_note_attributes: CreditNote.new,
    memo: 'memo0',
    applied_amount: 'applied_amount2',
    transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  )
)
```

