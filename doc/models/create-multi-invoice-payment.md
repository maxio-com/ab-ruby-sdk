
# Create Multi Invoice Payment

## Structure

`CreateMultiInvoicePayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `memo` | `String` | Optional | A description to be attached to the payment. |
| `details` | `String` | Optional | Additional information related to the payment method (eg. Check #). |
| `method` | [`InvoicePaymentMethodType`](../../doc/models/invoice-payment-method-type.md) | Optional | The type of payment method used. Defaults to other. |
| `amount` | String \| Float | Required | This is a container for one-of cases. |
| `received_on` | `String` | Optional | Date reflecting when the payment was received from a customer. Must be in the past. |
| `applications` | [`Array[CreateInvoicePaymentApplication]`](../../doc/models/create-invoice-payment-application.md) | Required | - |

## Example

```ruby
create_multi_invoice_payment = CreateMultiInvoicePayment.new(
  amount: 'String5',
  applications: [
    CreateInvoicePaymentApplication.new(
      invoice_uid: 'invoice_uid8',
      amount: 'amount0'
    )
  ],
  memo: 'memo6',
  details: 'details2',
  method: InvoicePaymentMethodType::ACH,
  received_on: 'received_on4'
)
```

