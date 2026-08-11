
# List Sale Rep Item

## Structure

`ListSaleRepItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `full_name` | `String` | Optional | - |
| `subscriptions_count` | `Integer` | Optional | - |
| `mrr_data` | [`Hash[String, SaleRepItemMrr]`](../../doc/models/sale-rep-item-mrr.md) | Optional | - |
| `test_mode` | `TrueClass \| FalseClass` | Optional | - |

## Example

```ruby
list_sale_rep_item = ListSaleRepItem.new(
  id: 124,
  full_name: 'full_name8',
  subscriptions_count: 56,
  mrr_data: {
    'november_2019': SaleRepItemMrr.new(
      mrr: '$0.00',
      usage: '$0.00',
      recurring: '$0.00'
    ),
    'december_2019': SaleRepItemMrr.new(
      mrr: '$0.00',
      usage: '$0.00',
      recurring: '$0.00'
    ),
    'january_2020': SaleRepItemMrr.new(
      mrr: '$400.00',
      usage: '$0.00',
      recurring: '$400.00'
    )
  },
  test_mode: false
)
```

