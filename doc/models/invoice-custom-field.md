
# Invoice Custom Field

## Structure

`InvoiceCustomField`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `owner_id` | `Integer` | Optional | - |
| `owner_type` | [`CustomFieldOwner`](../../doc/models/custom-field-owner.md) | Optional | - |
| `name` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `value` | `String` | Optional | **Constraints**: *Minimum Length*: `1` |
| `metadatum_id` | `Integer` | Optional | - |

## Example

```ruby
invoice_custom_field = InvoiceCustomField.new(
  owner_id: 238,
  owner_type: CustomFieldOwner::CUSTOMER,
  name: 'name4',
  value: 'value6',
  metadatum_id: 238
)
```

