
# List Proforma Invoices Meta

## Structure

`ListProformaInvoicesMeta`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `total_count` | `Integer` | Optional | - |
| `current_page` | `Integer` | Optional | - |
| `total_pages` | `Integer` | Optional | - |
| `status_code` | `Integer` | Optional | - |

## Example

```ruby
list_proforma_invoices_meta = ListProformaInvoicesMeta.new(
  total_count: 84,
  current_page: 60,
  total_pages: 72,
  status_code: 102
)
```

