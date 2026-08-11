
# Create Invoice Payment Request

## Structure

`CreateInvoicePaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment` | [`CreateInvoicePayment`](../../doc/models/create-invoice-payment.md) | Required | - |
| `type` | [`InvoicePaymentType`](../../doc/models/invoice-payment-type.md) | Optional | The type of payment to be applied to an Invoice. Defaults to external. |

## Example

```ruby
create_invoice_payment_request = CreateInvoicePaymentRequest.new(
  payment: CreateInvoicePayment.new(
    amount: 'String9',
    memo: 'memo0',
    method: InvoicePaymentMethodType::ACH,
    details: 'details6',
    payment_profile_id: 42
  ),
  type: InvoicePaymentType::SERVICE_CREDIT
)
```

