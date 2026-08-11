
# Create Usage Request

## Structure

`CreateUsageRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `usage` | [`CreateUsage`](../../doc/models/create-usage.md) | Required | - |

## Example

```ruby
create_usage_request = CreateUsageRequest.new(
  usage: CreateUsage.new(
    quantity: 162.34,
    price_point_id: 'price_point_id0',
    memo: 'memo2',
    billing_schedule: BillingSchedule.new(
      initial_billing_at: Date.iso8601('2016-03-13')
    ),
    custom_price: ComponentCustomPrice.new(
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
      tax_included: false,
      pricing_scheme: PricingScheme::STAIRSTEP,
      interval: 66,
      interval_unit: IntervalUnit::DAY,
      list_price_point_id: 174
    )
  )
)
```

