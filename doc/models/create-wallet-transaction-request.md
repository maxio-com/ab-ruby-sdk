
# Create Wallet Transaction Request

## Structure

`CreateWalletTransactionRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `wallet_transaction` | [`WalletTransaction1`](../../doc/models/wallet-transaction-1.md) | Required | - |

## Example

```ruby
create_wallet_transaction_request = CreateWalletTransactionRequest.new(
  wallet_transaction: WalletTransaction1.new(
    kind: Kind1::GRANT,
    amount: 'String5',
    memo: 'memo6',
    expires_at: 'expires_at6'
  )
)
```

