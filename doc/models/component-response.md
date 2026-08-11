
# Component Response

## Structure

`ComponentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component` | [`Component`](../../doc/models/component.md) | Required | - |

## Example

```ruby
component_response = ComponentResponse.new(
  component: Component.new(
    id: 80,
    name: 'name8',
    handle: 'handle4',
    pricing_scheme: PricingScheme::PER_UNIT,
    unit_name: 'unit_name0',
    item_category: ItemCategory::ENUM_BUSINESS_SOFTWARE
  )
)
```

