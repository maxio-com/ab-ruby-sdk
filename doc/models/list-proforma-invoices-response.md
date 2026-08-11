
# List Proforma Invoices Response

## Structure

`ListProformaInvoicesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `proforma_invoices` | [`Array[ProformaInvoice]`](../../doc/models/proforma-invoice.md) | Optional | - |
| `meta` | [`ListProformaInvoicesMeta`](../../doc/models/list-proforma-invoices-meta.md) | Optional | - |

## Example

```ruby
list_proforma_invoices_response = ListProformaInvoicesResponse.new(
  proforma_invoices: [
    ProformaInvoice.new(
      uid: 'uid0',
      site_id: 140,
      customer_id: 252,
      subscription_id: 68,
      number: 56
    ),
    ProformaInvoice.new(
      uid: 'uid0',
      site_id: 140,
      customer_id: 252,
      subscription_id: 68,
      number: 56
    ),
    ProformaInvoice.new(
      uid: 'uid0',
      site_id: 140,
      customer_id: 252,
      subscription_id: 68,
      number: 56
    )
  ],
  meta: ListProformaInvoicesMeta.new(
    total_count: 150,
    current_page: 126,
    total_pages: 138,
    status_code: 168
  )
)
```

