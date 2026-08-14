
# Payment for Allocation

Information for captured payment, if applicable

## Structure

`PaymentForAllocation`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `amount_in_cents` | `Integer` | Optional | - |
| `success` | `TrueClass \| FalseClass` | Optional | - |
| `memo` | `String` | Optional | - |

## Example

```ruby
payment_for_allocation = PaymentForAllocation.new(
  id: 232,
  amount_in_cents: 194,
  success: false,
  memo: 'memo6'
)
```

