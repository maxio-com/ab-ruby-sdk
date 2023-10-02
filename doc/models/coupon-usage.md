
# Coupon Usage

## Structure

`CouponUsage`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The Chargify id of the product |
| `name` | `String` | Optional | Name of the product |
| `signups` | `Integer` | Optional | Number of times the coupon has been applied |
| `savings` | `Integer` | Optional | Dollar amount of customer savings as a result of the coupon. |
| `savings_in_cents` | `Integer` | Optional | Dollar amount of customer savings as a result of the coupon. |
| `revenue` | `Integer` | Optional | Total revenue of the all subscriptions that have received a discount from this coupon. |
| `revenue_in_cents` | `Integer` | Optional | Total revenue of the all subscriptions that have received a discount from this coupon. |

## Example (as JSON)

```json
{
  "id": 14,
  "name": "name0",
  "signups": 34,
  "savings": 52,
  "savings_in_cents": 138
}
```

