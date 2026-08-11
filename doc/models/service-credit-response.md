
# Service Credit Response

## Structure

`ServiceCreditResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `service_credit` | [`ServiceCredit`](../../doc/models/service-credit.md) | Required | - |

## Example

```ruby
service_credit_response = ServiceCreditResponse.new(
  service_credit: ServiceCredit.new(
    id: 38,
    amount_in_cents: 124,
    ending_balance_in_cents: 164,
    entry_type: ServiceCreditType::CREDIT,
    memo: 'memo0'
  )
)
```

