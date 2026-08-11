
# Create Invoice Payment Application

## Structure

`CreateInvoicePaymentApplication`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_uid` | `String` | Required | Unique identifier for the invoice. It has the prefix "inv_" followed by alphanumeric characters. |
| `amount` | `String` | Required | Dollar amount of the invoice payment (eg. "10.50" => $10.50). |

## Example

```ruby
create_invoice_payment_application = CreateInvoicePaymentApplication.new(
  invoice_uid: 'invoice_uid8',
  amount: 'amount0'
)
```

