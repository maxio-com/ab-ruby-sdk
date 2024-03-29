
# Subscription Included Coupon

## Structure

`SubscriptionIncludedCoupon`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | - |
| `use_count` | `Integer` | Optional | - |
| `uses_allowed` | `Integer` | Optional | - |
| `expires_at` | `String` | Optional | - |
| `recurring` | `TrueClass \| FalseClass` | Optional | - |
| `amount_in_cents` | `Integer` | Optional | **Constraints**: `>= 0` |
| `percentage` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "code": "\"ABCD_10\"",
  "use_count": 2,
  "uses_allowed": 10,
  "expires_at": "\"2023-07-13T05:18:58-04:00\"",
  "amount_in_cents": 1000,
  "percentage": "\"15.0\"",
  "recurring": false
}
```

