
# Refund Invoice Request Refund

## Data Type

`RefundInvoice | RefundConsolidatedInvoice`

## Cases

| Type |
|  --- |
| [`RefundInvoice`](../../../doc/models/refund-invoice.md) |
| [`RefundConsolidatedInvoice`](../../../doc/models/refund-consolidated-invoice.md) |

## RefundInvoice

### Initialization Code

#### Example

```ruby
value = RefundInvoice.new(
  amount: 'amount8',
  memo: 'memo0',
  payment_id: 0
)
```

## RefundConsolidatedInvoice

### Initialization Code

#### Example

```ruby
value = RefundConsolidatedInvoice.new(
  memo: 'memo0',
  payment_id: 46,
  segment_uids: [
    'String0',
    'String1'
  ]
)
```

