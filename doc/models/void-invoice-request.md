
# Void Invoice Request

## Structure

`VoidInvoiceRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `void` | [`VoidInvoice`](../../doc/models/void-invoice.md) | Required | - |

## Example

```ruby
void_invoice_request = VoidInvoiceRequest.new(
  void: VoidInvoice.new(
    reason: 'reason6'
  )
)
```

