
# Bulk Components Price Point Assignment

## Structure

`BulkComponentsPricePointAssignment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `components` | [`Array[ComponentPricePointAssignment]`](../../doc/models/component-price-point-assignment.md) | Optional | - |

## Example

```ruby
bulk_components_price_point_assignment = BulkComponentsPricePointAssignment.new(
  components: [
    ComponentPricePointAssignment.new(
      component_id: 108,
      price_point: 'String5'
    )
  ]
)
```

