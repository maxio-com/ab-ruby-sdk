
# Wallet Grant Result Response

Returned by an adjustment: the ledger row written, plus the wallet's new balance.

## Structure

`WalletGrantResultResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `wallet_transactions` | [`Array[WalletTransaction]`](../../doc/models/wallet-transaction.md) | Required | - |
| `balance` | `String` | Required | The wallet's new balance, as a decimal string. |

## Example

```ruby
wallet_grant_result_response = WalletGrantResultResponse.new(
  wallet_transactions: [
    WalletTransaction.new(
      id: 140,
      wallet_id: 244,
      kind: 'grant',
      amount: '-30.0',
      grant_id: 160
    )
  ],
  balance: 'balance8'
)
```

