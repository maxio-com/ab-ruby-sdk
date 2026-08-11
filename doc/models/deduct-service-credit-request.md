
# Deduct Service Credit Request

## Structure

`DeductServiceCreditRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `deduction` | [`DeductServiceCredit`](../../doc/models/deduct-service-credit.md) | Required | - |

## Example

```ruby
deduct_service_credit_request = DeductServiceCreditRequest.new(
  deduction: DeductServiceCredit.new(
    amount: 'String9',
    memo: 'memo0'
  )
)
```

