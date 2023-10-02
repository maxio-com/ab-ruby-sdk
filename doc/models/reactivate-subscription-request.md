
# Reactivate Subscription Request

## Structure

`ReactivateSubscriptionRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `calendar_billing` | [`ReactivationBilling`](../../doc/models/reactivation-billing.md) | Optional | These values are only applicable to subscriptions using calendar billing |
| `include_trial` | `TrueClass \| FalseClass` | Optional | If `true` is sent, the reactivated Subscription will include a trial if one is available. If `false` is sent, the trial period will be ignored. |
| `preserve_balance` | `TrueClass \| FalseClass` | Optional | If `true` is passed, the existing subscription balance will NOT be cleared/reset before adding the additional reactivation charges. |
| `coupon_code` | `String` | Optional | The coupon code to be applied during reactivation. |
| `use_credits_and_prepayments` | `TrueClass \| FalseClass` | Optional | If true is sent, Chargify will use service credits and prepayments upon reactivation. If false is sent, the service credits and prepayments will be ignored. |
| `resume` | TrueClass \| FalseClass \| [Resume Options](../../doc/models/resume-options.md) \| nil | Optional | This is a container for one-of cases. |

## Example (as JSON)

```json
{
  "calendar_billing": {
    "reactivation_charge": "prorated"
  },
  "include_trial": false,
  "preserve_balance": false,
  "coupon_code": "coupon_code6",
  "use_credits_and_prepayments": false
}
```

