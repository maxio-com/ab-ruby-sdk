
# Customer

## Structure

`Customer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `first_name` | `String` | Optional | The first name of the customer |
| `last_name` | `String` | Optional | The last name of the customer |
| `email` | `String` | Optional | The email address of the customer |
| `cc_emails` | `String` | Optional | “A comma-separated list of emails that should be cc’d on all customer communications (e.g., “joe@example.com, sue@example.com”)” |
| `organization` | `String` | Optional | The organization of the customer. If no value, `null` or empty string is provided, `organization` will be populated with the customer's first and last name, separated with a space. |
| `reference` | `String` | Optional | The unique identifier used within your own application for this customer |
| `id` | `Integer` | Optional | The customer ID in Chargify |
| `created_at` | `DateTime` | Optional | The timestamp in which the customer object was created in Chargify |
| `updated_at` | `DateTime` | Optional | The timestamp in which the customer object was last edited |
| `address` | `String` | Optional | The customer’s shipping street address (e.g., “123 Main St.”) |
| `address_2` | `String` | Optional | Second line of the customer’s shipping address e.g., “Apt. 100” |
| `city` | `String` | Optional | The customer’s shipping address city (e.g., “Boston”) |
| `state` | `String` | Optional | The customer’s shipping address state (e.g., “MA”) |
| `state_name` | `String` | Optional | The customer's full name of state |
| `zip` | `String` | Optional | The customer’s shipping address zip code (e.g., “12345”) |
| `country` | `String` | Optional | The customer shipping address country |
| `country_name` | `String` | Optional | The customer's full name of country |
| `phone` | `String` | Optional | The phone number of the customer |
| `verified` | `TrueClass \| FalseClass` | Optional | Is the customer verified to use ACH as a payment method. |
| `portal_customer_created_at` | `DateTime` | Optional | The timestamp of when the Billing Portal entry was created at for the customer |
| `portal_invite_last_sent_at` | `DateTime` | Optional | The timestamp of when the Billing Portal invite was last sent at |
| `portal_invite_last_accepted_at` | `DateTime` | Optional | The timestamp of when the Billing Portal invite was last accepted |
| `tax_exempt` | `TrueClass \| FalseClass` | Optional | The tax exempt status for the customer. Acceptable values are true or 1 for true and false or 0 for false. |
| `surcharging` | `TrueClass \| FalseClass` | Optional | Whether surcharging is enabled for the customer. Only included on sites where surcharging control is enabled. |
| `vat_number` | `String` | Optional | The VAT business identification number for the customer. This number is used to determine VAT tax opt out rules. It is not validated when added or updated on a customer record. Instead, it is validated via VIES before calculating taxes. Only valid business identification numbers will allow for VAT opt out. |
| `parent_id` | `Integer` | Optional | The parent ID in Chargify if applicable. Parent is another Customer object. |
| `locale` | `String` | Optional | The locale for the customer to identify language-region |
| `default_subscription_group_uid` | `String` | Optional | - |
| `salesforce_id` | `String` | Optional | The Salesforce ID for the customer |
| `tax_exempt_reason` | `String` | Optional | The Tax Exemption Reason Code for the customer |
| `default_auto_renewal_profile_id` | `Integer` | Optional | The default auto-renewal profile ID for the customer |
| `maxioid` | `String` | Optional | The Maxio-generated unique identifier for the customer. |
| `branding_theme_id` | `Integer` | Optional | The ID of the Branding Theme assigned to this customer as the customer's default Branding Theme. This customer-level Branding Theme is used when a subscription does not have its own subscription-level Branding Theme.  Available only when Branding Themes are enabled for the site. |

## Example

```ruby
customer = Customer.new(
  first_name: 'first_name0',
  last_name: 'last_name8',
  email: 'email6',
  cc_emails: 'cc_emails0',
  organization: 'organization6'
)
```

