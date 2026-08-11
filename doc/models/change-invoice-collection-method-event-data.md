
# Change Invoice Collection Method Event Data

Example schema for an `change_invoice_collection_method` event

## Structure

`ChangeInvoiceCollectionMethodEventData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `from_collection_method` | `String` | Required | The previous collection method of the invoice. |
| `to_collection_method` | `String` | Required | The new collection method of the invoice. |

## Example

```ruby
change_invoice_collection_method_event_data = ChangeInvoiceCollectionMethodEventData.new(
  from_collection_method: 'from_collection_method2',
  to_collection_method: 'to_collection_method0'
)
```

