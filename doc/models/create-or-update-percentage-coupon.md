
# Create or Update Percentage Coupon

## Structure

`CreateOrUpdatePercentageCoupon`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | the name of the coupon |
| `code` | `String` | Required | may contain uppercase alphanumeric characters and these special characters (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and “.” |
| `description` | `String` | Optional | - |
| `percentage` | String \| Float | Required | This is a container for one-of cases. |
| `allow_negative_balance` | `TrueClass \| FalseClass` | Optional | - |
| `recurring` | `TrueClass \| FalseClass` | Optional | - |
| `end_date` | `DateTime` | Optional | - |
| `product_family_id` | `String` | Optional | - |
| `stackable` | `TrueClass \| FalseClass` | Optional | - |
| `compounding_strategy` | [`CompoundingStrategy`](../../doc/models/compounding-strategy.md) | Optional | - |
| `exclude_mid_period_allocations` | `TrueClass \| FalseClass` | Optional | - |
| `apply_on_cancel_at_end_of_period` | `TrueClass \| FalseClass` | Optional | - |
| `apply_on_subscription_expiration` | `TrueClass \| FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "name": "name0",
  "code": "code8",
  "description": "description0",
  "percentage": "String9",
  "allow_negative_balance": false,
  "recurring": false,
  "end_date": "2016-03-13T12:52:32.123Z",
  "product_family_id": "product_family_id6"
}
```

