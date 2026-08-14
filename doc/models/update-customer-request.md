
# Update Customer Request

## Structure

`UpdateCustomerRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer` | [`UpdateCustomer`](../../doc/models/update-customer.md) | Required | - |

## Example

```ruby
update_customer_request = UpdateCustomerRequest.new(
  customer: UpdateCustomer.new(
    first_name: 'first_name0',
    last_name: 'last_name8',
    email: 'email6',
    cc_emails: 'cc_emails0',
    organization: 'organization6'
  )
)
```

