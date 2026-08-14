
# Refund Invoice Request

## Structure

`RefundInvoiceRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `refund` | [Refund Invoice](../../doc/models/refund-invoice.md) \| [Refund Consolidated Invoice](../../doc/models/refund-consolidated-invoice.md) | Required | This is a container for any-of cases. |

## Example

```ruby
refund_invoice_request = RefundInvoiceRequest.new(
  refund: RefundInvoice.new(
    amount: 'amount8',
    memo: 'memo0',
    payment_id: 0,
    external: false,
    apply_credit: false,
    void_invoice: false
  )
)
```

