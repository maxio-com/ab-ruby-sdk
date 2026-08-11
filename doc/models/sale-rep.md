
# Sale Rep

## Structure

`SaleRep`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `full_name` | `String` | Optional | - |
| `subscriptions_count` | `Integer` | Optional | - |
| `test_mode` | `TrueClass \| FalseClass` | Optional | - |
| `subscriptions` | [`Array[SaleRepSubscription]`](../../doc/models/sale-rep-subscription.md) | Optional | - |

## Example

```ruby
sale_rep = SaleRep.new(
  id: 214,
  full_name: 'full_name0',
  subscriptions_count: 34,
  test_mode: false,
  subscriptions: [
    SaleRepSubscription.new(
      id: 202,
      site_name: 'site_name8',
      subscription_url: 'subscription_url2',
      customer_name: 'customer_name8',
      created_at: 'created_at4'
    ),
    SaleRepSubscription.new(
      id: 202,
      site_name: 'site_name8',
      subscription_url: 'subscription_url2',
      customer_name: 'customer_name8',
      created_at: 'created_at4'
    )
  ]
)
```

