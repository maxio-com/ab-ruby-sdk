
# Subscription Group Prepayment Response

## Structure

`SubscriptionGroupPrepaymentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `amount_in_cents` | `Integer` | Optional | The amount in cents of the entry. |
| `ending_balance_in_cents` | `Integer` | Optional | The ending balance in cents of the account. |
| `entry_type` | [`ServiceCreditType`](../../doc/models/service-credit-type.md) | Optional | The type of entry |
| `memo` | `String` | Optional | A memo attached to the entry. |

## Example

```ruby
subscription_group_prepayment_response = SubscriptionGroupPrepaymentResponse.new(
  id: 28,
  amount_in_cents: 114,
  ending_balance_in_cents: 154,
  entry_type: ServiceCreditType::CREDIT,
  memo: 'memo2'
)
```

