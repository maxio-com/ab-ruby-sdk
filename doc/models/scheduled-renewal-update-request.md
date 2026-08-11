
# Scheduled Renewal Update Request

## Structure

`ScheduledRenewalUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `renewal_configuration_item` | [Scheduled Renewal Item Request Body Component](../../doc/models/scheduled-renewal-item-request-body-component.md) \| [Scheduled Renewal Item Request Body Product](../../doc/models/scheduled-renewal-item-request-body-product.md) | Required | This is a container for one-of cases. |

## Example

```ruby
scheduled_renewal_update_request = ScheduledRenewalUpdateRequest.new(
  renewal_configuration_item: ScheduledRenewalItemRequestBodyComponent.new(
    item_type: 'Component',
    item_id: 108,
    price_point_id: 122,
    quantity: 212,
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
)
```

