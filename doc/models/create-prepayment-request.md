
# Create Prepayment Request

## Structure

`CreatePrepaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `prepayment` | [`CreatePrepayment`](../../doc/models/create-prepayment.md) | Required | - |

## Example

```ruby
create_prepayment_request = CreatePrepaymentRequest.new(
  prepayment: CreatePrepayment.new(
    amount: 11.6,
    details: 'details8',
    memo: 'memo2',
    method: CreatePrepaymentMethod::MONEY_ORDER,
    payment_profile_id: 240
  )
)
```

