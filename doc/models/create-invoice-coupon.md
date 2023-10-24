
# Create Invoice Coupon

## Structure

`CreateInvoiceCoupon`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | - |
| `percentage` | String \| Float \| nil | Optional | This is a container for one-of cases. |
| `amount` | String \| Float \| nil | Optional | This is a container for one-of cases. |
| `description` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `product_family_id` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `compounding_strategy` | [Compounding Strategy](../../doc/models/compounding-strategy.md) \| nil | Optional | This is a container for one-of cases. |

## Example (as JSON)

```json
{
  "percentage": 50.0,
  "code": "code4",
  "amount": "String9",
  "description": "description4",
  "product_family_id": "String3"
}
```

