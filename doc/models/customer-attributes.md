
# Customer Attributes

## Structure

`CustomerAttributes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `first_name` | `String` | Optional | The first name of the customer. Required when creating a customer via attributes. |
| `last_name` | `String` | Optional | The last name of the customer. Required when creating a customer via attributes. |
| `email` | `String` | Optional | The email address of the customer. Required when creating a customer via attributes. |
| `cc_emails` | `String` | Optional | (Optional) A list of emails that should be cc’d on all customer communications. |
| `organization` | `String` | Optional | (Optional) The organization/company of the customer. |
| `reference` | `String` | Optional | (Optional) A customer “reference”, or unique identifier from your app, stored in Chargify. Can be used so that you may reference your customer’s within Chargify using the same unique value you use in your application. |
| `address` | `String` | Optional | (Optional) The customer’s shipping street address (e.g., “123 Main St.”). |
| `address_2` | `String` | Optional | (Optional) Second line of the customer’s shipping address e.g., “Apt. 100” |
| `city` | `String` | Optional | (Optional) The customer’s shipping address city (e.g., “Boston”). |
| `state` | `String` | Optional | “(Optional) The customer’s shipping address state (e.g., “MA”). This must conform to the [ISO_3166-1](https://en.wikipedia.org/wiki/ISO_3166-1#Current_codes) in order to be valid for tax locale purposes.” |
| `zip` | `String` | Optional | (Optional) The customer’s shipping address zip code (e.g., “12345”). |
| `country` | `String` | Optional | “(Optional) The customer shipping address country, required in [ISO_3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) format (e.g., “US”).” |
| `phone` | `String` | Optional | (Optional) The phone number of the customer. |
| `verified` | `TrueClass \| FalseClass` | Optional | - |
| `tax_exempt` | `TrueClass \| FalseClass` | Optional | (Optional) The tax_exempt status of the customer. Acceptable values are true or 1 for true and false or 0 for false. |
| `surcharging` | `TrueClass \| FalseClass` | Optional | (Optional) Whether surcharging is enabled for the customer. Defaults to `true` when omitted. Only applied on sites where surcharging control is enabled. |
| `vat_number` | `String` | Optional | (Optional) Supplying the VAT number allows EU customers to opt-out of the Value Added Tax assuming the merchant address and customer billing address are not within the same EU country. It’s important to omit the country code from the VAT number upon entry. Otherwise, taxes will be assessed upon the purchase. |
| `metafields` | `Hash[String, String]` | Optional | (Optional) A set of key/value pairs representing custom fields and their values. Metafields will be created “on-the-fly” in your site for a given key, if they have not been created yet. |
| `parent_id` | `Integer` | Optional | The parent ID in Chargify if applicable. Parent is another Customer object. |
| `salesforce_id` | `String` | Optional | (Optional) The Salesforce ID of the customer. |
| `default_auto_renewal_profile_id` | `Integer` | Optional | (Optional) The default auto-renewal profile ID for the customer |

## Example

```ruby
customer_attributes = CustomerAttributes.new(
  first_name: 'first_name2',
  last_name: 'last_name0',
  email: 'email4',
  cc_emails: 'cc_emails8',
  organization: 'organization4',
  metafields: {
    'custom_field_name_1': 'custom_field_value_1',
    'custom_field_name_2': 'custom_field_value_2'
  }
)
```

