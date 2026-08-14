
# Subscription Group Signup Event Data

## Structure

`SubscriptionGroupSignupEventData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_group` | [`SubscriptionGroupSignupFailureData`](../../doc/models/subscription-group-signup-failure-data.md) | Required | - |
| `customer` | [`Customer`](../../doc/models/customer.md) | Required | - |

## Example

```ruby
subscription_group_signup_event_data = SubscriptionGroupSignupEventData.new(
  subscription_group: SubscriptionGroupSignupFailureData.new(
    payer_id: 150,
    payer_reference: 'payer_reference6',
    payment_profile_id: 128,
    payment_collection_method: 'payment_collection_method8',
    payer_attributes: PayerAttributes.new(
      first_name: 'first_name2',
      last_name: 'last_name0',
      email: 'email4',
      cc_emails: 'cc_emails2',
      organization: 'organization6'
    )
  ),
  customer: Customer.new(
    first_name: 'first_name0',
    last_name: 'last_name8',
    email: 'email6',
    cc_emails: 'cc_emails0',
    organization: 'organization6'
  )
)
```

