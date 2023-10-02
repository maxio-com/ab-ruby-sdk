
# Customer

## Structure

`Customer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `first_name` | `String` | Optional | The first name of the customer |
| `last_name` | `String` | Optional | The last name of the customer |
| `email` | `String` | Optional | The email address of the customer |
| `cc_emails` | `String` | Optional | A comma-separated list of emails that should be cc’d on all customer communications (i.e. “joe@example.com, sue@example.com”) |
| `organization` | `String` | Optional | The organization of the customer |
| `reference` | `String` | Optional | The unique identifier used within your own application for this customer |
| `id` | `Integer` | Optional | The customer ID in Chargify |
| `created_at` | `String` | Optional | The timestamp in which the customer object was created in Chargify |
| `updated_at` | `String` | Optional | The timestamp in which the customer object was last edited |
| `address` | `String` | Optional | The customer’s shipping street address (i.e. “123 Main St.”) |
| `address_2` | `String` | Optional | Second line of the customer’s shipping address i.e. “Apt. 100” |
| `city` | `String` | Optional | The customer’s shipping address city (i.e. “Boston”) |
| `state` | `String` | Optional | The customer’s shipping address state (i.e. “MA”) |
| `state_name` | `String` | Optional | The customer's full name of state |
| `zip` | `String` | Optional | The customer’s shipping address zip code (i.e. “12345”) |
| `country` | `String` | Optional | The customer shipping address country |
| `country_name` | `String` | Optional | The customer's full name of country |
| `phone` | `String` | Optional | The phone number of the customer |
| `verified` | `TrueClass \| FalseClass` | Optional | Is the customer verified to use ACH as a payment method. Available only on Authorize.Net gateway |
| `portal_customer_created_at` | `String` | Optional | The timestamp of when the Billing Portal entry was created at for the customer |
| `portal_invite_last_sent_at` | `String` | Optional | The timestamp of when the Billing Portal invite was last sent at |
| `portal_invite_last_accepted_at` | `String` | Optional | The timestamp of when the Billing Portal invite was last accepted |
| `tax_exempt` | `TrueClass \| FalseClass` | Optional | The tax exempt status for the customer. Acceptable values are true or 1 for true and false or 0 for false. |
| `vat_number` | `String` | Optional | The VAT business identification number for the customer. This number is used to determine VAT tax opt out rules. It is not validated when added or updated on a customer record. Instead, it is validated via VIES before calculating taxes. Only valid business identification numbers will allow for VAT opt out. |
| `parent_id` | `Integer` | Optional | The parent ID in Chargify if applicable. Parent is another Customer object. |
| `locale` | `String` | Optional | The locale for the customer to identify language-region |
| `default_subscription_group_uid` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "first_name": "first_name8",
  "last_name": "last_name6",
  "email": "email8",
  "cc_emails": "cc_emails2",
  "organization": "organization8"
}
```

