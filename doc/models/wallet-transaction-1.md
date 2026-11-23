
# Wallet Transaction 1

## Structure

`WalletTransaction1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `kind` | [`Kind1`](../../doc/models/kind-1.md) | Required | Determines the direction of the movement. The amount itself is always sent positive. |
| `amount` | String \| Integer | Required | This is a container for one-of cases. |
| `memo` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `expires_at` | `String` | Optional | An expiration for the grant this creates. Only accepted with `kind: grant`; sending it with `kind: debit` is rejected. Omit it for an evergreen grant. Accepts either a bare calendar date (`YYYY-MM-DD`), resolved to the end of that day in the site's time zone, or a full timestamp. A calendar day that doesn't exist, such as `2027-02-30`, is rejected with `422` rather than rolled into the next month. |

## Example

```ruby
wallet_transaction1 = WalletTransaction1.new(
  kind: Kind1::GRANT,
  amount: 'String9',
  memo: 'memo0',
  expires_at: 'expires_at0'
)
```

