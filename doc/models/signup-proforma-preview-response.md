
# Signup Proforma Preview Response

## Structure

`SignupProformaPreviewResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `proforma_invoice_preview` | [`SignupProformaPreview`](../../doc/models/signup-proforma-preview.md) | Required | - |

## Example

```ruby
signup_proforma_preview_response = SignupProformaPreviewResponse.new(
  proforma_invoice_preview: SignupProformaPreview.new(
    current_proforma_invoice: ProformaInvoice.new(
      uid: 'uid6',
      site_id: 72,
      customer_id: 184,
      subscription_id: 0,
      number: 132
    ),
    next_proforma_invoice: ProformaInvoice.new(
      uid: 'uid8',
      site_id: 212,
      customer_id: 68,
      subscription_id: 140,
      number: 16
    )
  )
)
```

