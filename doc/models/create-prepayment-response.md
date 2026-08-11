
# Create Prepayment Response

## Structure

`CreatePrepaymentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `prepayment` | [`CreatedPrepayment`](../../doc/models/created-prepayment.md) | Required | - |

## Example

```ruby
create_prepayment_response = CreatePrepaymentResponse.new(
  prepayment: CreatedPrepayment.new(
    id: 38,
    subscription_id: 148,
    amount_in_cents: 124,
    memo: 'memo2',
    created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  )
)
```

