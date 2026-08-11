
# Scheduled Renewal Item Request Body Product

## Structure

`ScheduledRenewalItemRequestBodyProduct`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `item_type` | `String` | Required, Constant | Item type to add. Either Product or Component.<br><br>**Value**: `'Product'` |
| `item_id` | `Integer` | Required | Product or component identifier. |
| `price_point_id` | `Integer` | Optional | Price point identifier. |
| `quantity` | `Integer` | Optional | (Optional) Quantity for the item. |
| `custom_price` | [`ScheduledRenewalProductPricePoint`](../../doc/models/scheduled-renewal-product-price-point.md) | Optional | Custom pricing for a product within a scheduled renewal. |

## Example

```ruby
scheduled_renewal_item_request_body_product = ScheduledRenewalItemRequestBodyProduct.new(
  item_type: 'Product',
  item_id: 18,
  price_point_id: 4,
  quantity: 82,
  custom_price: ScheduledRenewalProductPricePoint.new(
    price_in_cents: 'String3',
    interval: 'String3',
    interval_unit: IntervalUnit::DAY,
    name: 'name4',
    handle: 'handle0',
    tax_included: false,
    initial_charge_in_cents: 30,
    expiration_interval: 52
  )
)
```

