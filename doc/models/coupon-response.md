
# Coupon Response

## Structure

`CouponResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `coupon` | [`Coupon`](../../doc/models/coupon.md) | Optional | - |

## Example (as JSON)

```json
{
  "coupon": {
    "id": 196,
    "name": "name4",
    "code": "code2",
    "description": "description6",
    "amount": 97.66,
    "amount_in_cents": 230,
    "product_family_id": 56,
    "product_family_name": "product_family_name8",
    "start_date": "2016-03-13T12:52:32.123Z",
    "end_date": "2016-03-13T12:52:32.123Z",
    "percentage": "percentage2",
    "recurring": false,
    "recurring_scheme": "recur_with_duration",
    "duration_period_count": 232,
    "duration_interval": 124,
    "duration_interval_unit": "duration_interval_unit4",
    "duration_interval_span": "duration_interval_span8",
    "allow_negative_balance": false,
    "archived_at": "2016-03-13T12:52:32.123Z",
    "conversion_limit": "conversion_limit2",
    "stackable": false,
    "compounding_strategy": "full-price",
    "use_site_exchange_rate": false,
    "created_at": "2016-03-13T12:52:32.123Z",
    "updated_at": "2016-03-13T12:52:32.123Z",
    "discount_type": "amount",
    "exclude_mid_period_allocations": false,
    "apply_on_cancel_at_end_of_period": false,
    "apply_on_subscription_expiration": false,
    "coupon_restrictions": [
      {
        "id": 92,
        "item_type": "Component",
        "item_id": 16,
        "name": "name6",
        "handle": "handle2"
      }
    ]
  }
}
```

