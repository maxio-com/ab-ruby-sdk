
# Service Credit 1

## Structure

`ServiceCredit1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `amount_in_cents` | `Integer` | Optional | The amount in cents of the entry |
| `ending_balance_in_cents` | `Integer` | Optional | The new balance for the credit account |
| `entry_type` | [`ServiceCreditType`](../../doc/models/service-credit-type.md) | Optional | The type of entry |
| `memo` | `String` | Optional | The memo attached to the entry |
| `invoice_uid` | `String` | Optional | The invoice uid associated with the entry. Only present for debit entries. |
| `remaining_balance_in_cents` | `Integer` | Optional | The remaining balance for the entry |
| `created_at` | `DateTime` | Optional | The date and time the entry was created |

## Example

```ruby
service_credit1 = ServiceCredit1.new(
  id: 118,
  amount_in_cents: 52,
  ending_balance_in_cents: 244,
  entry_type: ServiceCreditType::CREDIT,
  memo: 'memo6'
)
```

