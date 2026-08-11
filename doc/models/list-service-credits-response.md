
# List Service Credits Response

## Structure

`ListServiceCreditsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `service_credits` | [`Array[ServiceCredit1]`](../../doc/models/service-credit-1.md) | Optional | - |

## Example

```ruby
list_service_credits_response = ListServiceCreditsResponse.new(
  service_credits: [
    ServiceCredit1.new(
      id: 224,
      amount_in_cents: 54,
      ending_balance_in_cents: 94,
      entry_type: ServiceCreditType::CREDIT,
      memo: 'memo2'
    )
  ]
)
```

