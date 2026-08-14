
# Customer Custom Fields Change

## Structure

`CustomerCustomFieldsChange`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `before` | [`Array[InvoiceCustomField]`](../../doc/models/invoice-custom-field.md) | Required | - |
| `after` | [`Array[InvoiceCustomField]`](../../doc/models/invoice-custom-field.md) | Required | - |

## Example

```ruby
customer_custom_fields_change = CustomerCustomFieldsChange.new(
  before: [
    InvoiceCustomField.new(
      owner_id: 26,
      owner_type: CustomFieldOwner::CUSTOMER,
      name: 'name0',
      value: 'value2',
      metadatum_id: 26
    )
  ],
  after: [
    InvoiceCustomField.new(
      owner_id: 130,
      owner_type: CustomFieldOwner::CUSTOMER,
      name: 'name2',
      value: 'value4',
      metadatum_id: 130
    )
  ]
)
```

