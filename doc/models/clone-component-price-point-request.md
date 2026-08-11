
# Clone Component Price Point Request

## Structure

`CloneComponentPricePointRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | [`CloneComponentPricePoint`](../../doc/models/clone-component-price-point.md) | Required | - |

## Example

```ruby
clone_component_price_point_request = CloneComponentPricePointRequest.new(
  price_point: CloneComponentPricePoint.new(
    name: 'name0',
    handle: 'handle6'
  )
)
```

