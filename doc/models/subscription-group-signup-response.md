
# Subscription Group Signup Response

## Structure

`SubscriptionGroupSignupResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `scheme` | `Integer` | Optional | - |
| `customer_id` | `Integer` | Optional | - |
| `payment_profile_id` | `Integer` | Optional | - |
| `subscription_ids` | `Array<Integer>` | Optional | - |
| `primary_subscription_id` | `Integer` | Optional | - |
| `next_assessment_at` | `String` | Optional | - |
| `state` | `String` | Optional | - |
| `cancel_at_end_of_period` | `TrueClass \| FalseClass` | Optional | - |
| `subscriptions` | [`Array<SubscriptionGroupItem>`](../../doc/models/subscription-group-item.md) | Optional | - |
| `payment_collection_method` | [`PaymentCollectionMethod`](../../doc/models/payment-collection-method.md) | Optional | The type of payment collection to be used in the subscription. For legacy Statements Architecture valid options are - `invoice`, `automatic`. For current Relationship Invoicing Architecture valid options are - `remittance`, `automatic`, `prepaid`.<br>**Default**: `PaymentCollectionMethod::AUTOMATIC` |

## Example (as JSON)

```json
{
  "payment_collection_method": "automatic",
  "uid": "uid8",
  "scheme": 28,
  "customer_id": 48,
  "payment_profile_id": 44,
  "subscription_ids": [
    158,
    159,
    160
  ]
}
```

