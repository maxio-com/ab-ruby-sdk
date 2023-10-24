
# Create or Update Percentage Coupon

## Structure

`CreateOrUpdatePercentageCoupon`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | the name of the coupon |
| `code` | `String` | Required | may contain uppercase alphanumeric characters and these special characters (which allow for email addresses to be used): “%”, “@”, “+”, “-”, “_”, and “.” |
| `description` | `String` | Optional | - |
| `percentage` | Float \| String | Required | This is a container for one-of cases. |
| `allow_negative_balance` | `String` | Optional | - |
| `recurring` | `String` | Optional | - |
| `end_date` | `String` | Optional | - |
| `product_family_id` | `String` | Optional | - |
| `stackable` | `String` | Optional | - |
| `compounding_strategy` | [Compounding Strategy](../../doc/models/compounding-strategy.md) \| nil | Optional | This is a container for one-of cases. |
| `exclude_mid_period_allocations` | `TrueClass \| FalseClass` | Optional | - |
| `apply_on_cancel_at_end_of_period` | `TrueClass \| FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "name": "name0",
  "code": "code8",
  "description": "description0",
  "percentage": 11.02,
  "allow_negative_balance": "allow_negative_balance8",
  "recurring": "recurring4",
  "end_date": "end_date0",
  "product_family_id": "product_family_id6"
}
```

