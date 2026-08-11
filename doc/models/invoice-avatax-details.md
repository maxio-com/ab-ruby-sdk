
# Invoice Avatax Details

## Structure

`InvoiceAvataxDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `status` | `String` | Optional | - |
| `document_code` | `String` | Optional | - |
| `commit_date` | `DateTime` | Optional | - |
| `modify_date` | `DateTime` | Optional | - |

## Example

```ruby
invoice_avatax_details = InvoiceAvataxDetails.new(
  id: 18,
  status: 'status2',
  document_code: 'document_code0',
  commit_date: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  modify_date: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

