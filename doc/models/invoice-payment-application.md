
# Invoice Payment Application

## Structure

`InvoicePaymentApplication`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_uid` | `String` | Optional | Unique identifier for the paid invoice. It has the prefix "inv_" followed by alphanumeric characters. |
| `application_uid` | `String` | Optional | Unique identifier for the payment. It has the prefix "pmt_" followed by alphanumeric characters. |
| `applied_amount` | `String` | Optional | Dollar amount of the paid invoice. |

## Example

```ruby
invoice_payment_application = InvoicePaymentApplication.new(
  invoice_uid: 'invoice_uid4',
  application_uid: 'application_uid8',
  applied_amount: 'applied_amount4'
)
```

