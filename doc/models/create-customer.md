
# Create Customer

## Structure

`CreateCustomer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `first_name` | `String` | Required | - |
| `last_name` | `String` | Required | - |
| `email` | `String` | Required | - |
| `cc_emails` | `String` | Optional | - |
| `organization` | `String` | Optional | - |
| `reference` | `String` | Optional | - |
| `address` | `String` | Optional | - |
| `address_2` | `String` | Optional | - |
| `city` | `String` | Optional | - |
| `state` | `String` | Optional | - |
| `zip` | `String` | Optional | - |
| `country` | `String` | Optional | - |
| `phone` | `String` | Optional | - |
| `locale` | `String` | Optional | Set a specific language on a customer record. |
| `vat_number` | `String` | Optional | - |
| `tax_exempt` | `TrueClass \| FalseClass` | Optional | - |
| `surcharging` | `TrueClass \| FalseClass` | Optional | Whether surcharging is enabled for the customer. Defaults to `true` when omitted. Only applied on sites where surcharging control is enabled. |
| `tax_exempt_reason` | `String` | Optional | - |
| `parent_id` | `Integer` | Optional | The parent ID in Chargify if applicable. Parent is another Customer object. |
| `salesforce_id` | `String` | Optional | The Salesforce ID of the customer |
| `branding_theme_id` | `Integer` | Optional | The ID of the Branding Theme assigned to this customer as the customer's default Branding Theme. This customer-level Branding Theme is used when a subscription does not have its own subscription-level Branding Theme. Available only when Branding Themes are enabled for the site. |

## Example

```ruby
create_customer = CreateCustomer.new(
  first_name: 'first_name0',
  last_name: 'last_name8',
  email: 'email6',
  cc_emails: 'cc_emails0',
  organization: 'organization6',
  reference: 'reference4',
  address: 'address6',
  address_2: 'address_24'
)
```

