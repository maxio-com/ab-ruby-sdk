
# Deliver Proforma Invoice Request

## Structure

`DeliverProformaInvoiceRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_emails` | `Array[String]` | Optional | - |
| `cc_recipient_emails` | `Array[String]` | Optional | - |
| `bcc_recipient_emails` | `Array[String]` | Optional | - |

## Example

```ruby
deliver_proforma_invoice_request = DeliverProformaInvoiceRequest.new(
  recipient_emails: [
    'recipient_emails9',
    'recipient_emails0'
  ],
  cc_recipient_emails: [
    'cc_recipient_emails2',
    'cc_recipient_emails3',
    'cc_recipient_emails4'
  ],
  bcc_recipient_emails: [
    'bcc_recipient_emails8'
  ]
)
```

