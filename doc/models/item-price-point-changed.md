
# Item Price Point Changed

## Structure

`ItemPricePointChanged`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `item_id` | `Integer` | Required | - |
| `item_type` | `String` | Required | - |
| `item_handle` | `String` | Required | - |
| `item_name` | `String` | Required | - |
| `previous_price_point` | [`ItemPricePointData`](../../doc/models/item-price-point-data.md) | Required | - |
| `current_price_point` | [`ItemPricePointData`](../../doc/models/item-price-point-data.md) | Required | - |

## Example

```ruby
item_price_point_changed = ItemPricePointChanged.new(
  item_id: 66,
  item_type: 'item_type2',
  item_handle: 'item_handle0',
  item_name: 'item_name4',
  previous_price_point: ItemPricePointData.new(
    id: 216,
    handle: 'handle6',
    name: 'name0'
  ),
  current_price_point: ItemPricePointData.new(
    id: 218,
    handle: 'handle6',
    name: 'name0'
  )
)
```

