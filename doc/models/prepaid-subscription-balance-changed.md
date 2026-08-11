
# Prepaid Subscription Balance Changed

## Structure

`PrepaidSubscriptionBalanceChanged`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `reason` | `String` | Required | - |
| `current_account_balance_in_cents` | `Integer` | Required | - |
| `prepayment_account_balance_in_cents` | `Integer` | Required | - |
| `current_usage_amount_in_cents` | `Integer` | Required | - |

## Example

```ruby
prepaid_subscription_balance_changed = PrepaidSubscriptionBalanceChanged.new(
  reason: 'reason4',
  current_account_balance_in_cents: 24,
  prepayment_account_balance_in_cents: 242,
  current_usage_amount_in_cents: 16
)
```

