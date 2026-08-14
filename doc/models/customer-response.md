
# Customer Response

## Structure

`CustomerResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer` | [`Customer`](../../doc/models/customer.md) | Required | - |

## Example

```ruby
customer_response = CustomerResponse.new(
  customer: Customer.new(
    first_name: 'first_name0',
    last_name: 'last_name8',
    email: 'email6',
    cc_emails: 'cc_emails0',
    organization: 'organization6'
  )
)
```

