
# Customer Changes Preview Response

## Structure

`CustomerChangesPreviewResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `changes` | [`CustomerChange`](../../doc/models/customer-change.md) | Required | - |

## Example

```ruby
customer_changes_preview_response = CustomerChangesPreviewResponse.new(
  changes: CustomerChange.new(
    payer: CustomerPayerChange.new(
      before: InvoicePayerChange.new(
        first_name: 'first_name0',
        last_name: 'last_name8',
        organization: 'organization4',
        email: 'email6'
      ),
      after: InvoicePayerChange.new(
        first_name: 'first_name2',
        last_name: 'last_name0',
        organization: 'organization4',
        email: 'email4'
      )
    ),
    shipping_address: AddressChange.new(
      before: InvoiceAddress.new(
        street: 'street0',
        line2: 'line24',
        city: 'city0',
        state: 'state6',
        zip: 'zip4'
      ),
      after: InvoiceAddress.new(
        street: 'street2',
        line2: 'line26',
        city: 'city8',
        state: 'state2',
        zip: 'zip4'
      )
    ),
    billing_address: AddressChange.new(
      before: InvoiceAddress.new(
        street: 'street0',
        line2: 'line24',
        city: 'city0',
        state: 'state6',
        zip: 'zip4'
      ),
      after: InvoiceAddress.new(
        street: 'street2',
        line2: 'line26',
        city: 'city8',
        state: 'state2',
        zip: 'zip4'
      )
    ),
    custom_fields: CustomerCustomFieldsChange.new(
      before: [
        InvoiceCustomField.new(
          owner_id: 26,
          owner_type: CustomFieldOwner::CUSTOMER,
          name: 'name0',
          value: 'value2',
          metadatum_id: 26
        ),
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
        ),
        InvoiceCustomField.new(
          owner_id: 130,
          owner_type: CustomFieldOwner::CUSTOMER,
          name: 'name2',
          value: 'value4',
          metadatum_id: 130
        ),
        InvoiceCustomField.new(
          owner_id: 130,
          owner_type: CustomFieldOwner::CUSTOMER,
          name: 'name2',
          value: 'value4',
          metadatum_id: 130
        )
      ]
    )
  )
)
```

