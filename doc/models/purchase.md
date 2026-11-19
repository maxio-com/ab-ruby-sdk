
# Purchase

## Structure

`Purchase`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `quantity` | String \| Integer | Required | This is a container for one-of cases. |
| `price_point_id` | `Integer` | Optional | The price point to purchase at. Must belong to the wallet's billing product. Defaults to the `price_point_id` set on the wallet. |
| `memo` | `String` | Optional | (Optional) A note recorded on the resulting grant's ledger row.<br><br>**Constraints**: *Maximum Length*: `255` |

## Example

```ruby
purchase = Purchase.new(
  quantity: 'String5',
  price_point_id: 20,
  memo: 'memo2'
)
```

