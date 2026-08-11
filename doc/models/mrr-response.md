
# MRR Response

## Structure

`MRRResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mrr` | [`MRR`](../../doc/models/mrr.md) | Required | - |

## Example

```ruby
mrr_response = MRRResponse.new(
  mrr: MRR.new(
    amount_in_cents: 198,
    amount_formatted: 'amount_formatted6',
    currency: 'currency4',
    currency_symbol: 'currency_symbol2',
    breakouts: Breakouts.new(
      plan_amount_in_cents: 254,
      plan_amount_formatted: 'plan_amount_formatted0',
      usage_amount_in_cents: 106,
      usage_amount_formatted: 'usage_amount_formatted8'
    )
  )
)
```

