
# Credit Scheme Request

## Structure

`CreditSchemeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `credit_scheme` | [`CreditScheme`](../../doc/models/credit-scheme.md) | Required | - |

## Example

```ruby
credit_scheme_request = CreditSchemeRequest.new(
  credit_scheme: CreditScheme::REFUND
)
```

