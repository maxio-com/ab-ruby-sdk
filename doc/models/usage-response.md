
# Usage Response

## Structure

`UsageResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `usage` | [`Usage`](../../doc/models/usage.md) | Required | - |

## Example

```ruby
usage_response = UsageResponse.new(
  usage: Usage.new(
    id: 150,
    memo: 'memo2',
    created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    price_point_id: 28,
    quantity: 28
  )
)
```

