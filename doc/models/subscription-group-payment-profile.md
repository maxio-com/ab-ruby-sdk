
# Subscription Group Payment Profile

## Structure

`SubscriptionGroupPaymentProfile`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `first_name` | `String` | Optional | - |
| `last_name` | `String` | Optional | - |
| `masked_card_number` | `String` | Optional | - |

## Example

```ruby
subscription_group_payment_profile = SubscriptionGroupPaymentProfile.new(
  id: 112,
  first_name: 'first_name8',
  last_name: 'last_name6',
  masked_card_number: 'masked_card_number6'
)
```

