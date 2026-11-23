
# Wallet Transactions List Response

## Structure

`WalletTransactionsListResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `wallet_transactions` | [`Array[WalletTransaction]`](../../doc/models/wallet-transaction.md) | Required | - |
| `meta` | [`ListPublicKeysMeta`](../../doc/models/list-public-keys-meta.md) | Required | - |

## Example

```ruby
wallet_transactions_list_response = WalletTransactionsListResponse.new(
  wallet_transactions: [
    WalletTransaction.new(
      id: 140,
      wallet_id: 244,
      kind: 'grant',
      amount: '-30.0',
      grant_id: 160
    )
  ],
  meta: ListPublicKeysMeta.new(
    total_count: 150,
    current_page: 126,
    total_pages: 138,
    per_page: 152
  )
)
```

