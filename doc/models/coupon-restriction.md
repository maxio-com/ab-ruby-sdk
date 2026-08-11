
# Coupon Restriction

## Structure

`CouponRestriction`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `item_type` | [`RestrictionType`](../../doc/models/restriction-type.md) | Optional | - |
| `item_id` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `handle` | `String` | Optional | - |

## Example

```ruby
coupon_restriction = CouponRestriction.new(
  id: 190,
  item_type: RestrictionType::COMPONENT,
  item_id: 82,
  name: 'name2',
  handle: 'handle8'
)
```

