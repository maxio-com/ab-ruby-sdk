
# Update Customer

## Structure

`UpdateCustomer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `first_name` | `String` | Optional | - |
| `last_name` | `String` | Optional | - |
| `email` | `String` | Optional | - |
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
| `surcharging` | `TrueClass \| FalseClass` | Optional | Whether surcharging is enabled for the customer. Only applied on sites where surcharging control is enabled. |
| `tax_exempt_reason` | `String` | Optional | - |
| `parent_id` | `Integer` | Optional | - |
| `verified` | `TrueClass \| FalseClass` | Optional | Is the customer verified to use ACH as a payment method. Available only on the Authorize.Net gateway. |
| `salesforce_id` | `String` | Optional | The Salesforce ID of the customer |
| `branding_theme_id` | `Integer` | Optional | The ID of the Branding Theme assigned to this customer as the customer's default Branding Theme. This customer-level Branding Theme is used when a subscription does not have its own subscription-level Branding Theme. Available only when Branding Themes are enabled for the site. |

## Example

```ruby
update_customer = UpdateCustomer.new(
  first_name: 'first_name4',
  last_name: 'last_name2',
  email: 'email2',
  cc_emails: 'cc_emails6',
  organization: 'organization8'
)
```

