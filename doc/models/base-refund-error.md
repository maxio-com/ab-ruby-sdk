
# Base Refund Error

## Structure

`BaseRefundError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `base` | `Array[Object]` | Optional | - |

## Example

```ruby
base_refund_error = BaseRefundError.new(
  base: [
    { 'key1' => 'val1', 'key2' => 'val2' },
    { 'key1' => 'val1', 'key2' => 'val2' },
    { 'key1' => 'val1', 'key2' => 'val2' }
  ]
)
```

