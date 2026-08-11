
# Scheduled Renewal Item Request Body Component

## Structure

`ScheduledRenewalItemRequestBodyComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `item_type` | `String` | Required, Constant | Item type to add. Either Product or Component.<br><br>**Value**: `'Component'` |
| `item_id` | `Integer` | Required | Product or component identifier. |
| `price_point_id` | `Integer` | Optional | Price point identifier. |
| `quantity` | `Integer` | Optional | (Optional) Quantity for the item. |
| `custom_price` | [`ScheduledRenewalComponentCustomPrice`](../../doc/models/scheduled-renewal-component-custom-price.md) | Optional | Custom pricing for a component within a scheduled renewal. |

## Example

```ruby
scheduled_renewal_item_request_body_component = ScheduledRenewalItemRequestBodyComponent.new(
  item_type: 'Component',
  item_id: 228,
  price_point_id: 214,
  quantity: 36,
  custom_price: ScheduledRenewalComponentCustomPrice.new(
    pricing_scheme: PricingScheme::STAIRSTEP,
    prices: [
      Price.new(
        starting_quantity: 242,
        unit_price: 23.26,
        ending_quantity: 40
      ),
      Price.new(
        starting_quantity: 242,
        unit_price: 23.26,
        ending_quantity: 40
      )
    ],
    tax_included: false
  )
)
```

