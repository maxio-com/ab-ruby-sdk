
# Payment Collection Method Changed

## Structure

`PaymentCollectionMethodChanged`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `previous_value` | `String` | Required | - |
| `current_value` | `String` | Required | - |

## Example

```ruby
payment_collection_method_changed = PaymentCollectionMethodChanged.new(
  previous_value: 'previous_value2',
  current_value: 'current_value0'
)
```

