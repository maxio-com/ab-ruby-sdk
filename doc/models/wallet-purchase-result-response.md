
# Wallet Purchase Result Response

## Structure

`WalletPurchaseResultResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `wallet_purchases` | [`Array[WalletPurchase]`](../../doc/models/wallet-purchase.md) | Required | - |
| `balance` | `String` | Required | The wallet's new balance, as a decimal string. |

## Example

```ruby
wallet_purchase_result_response = WalletPurchaseResultResponse.new(
  wallet_purchases: [
    WalletPurchase.new(
      id: 244,
      price_point_id: 134,
      invoice_uid: 'invoice_uid0',
      quantity: 'quantity6',
      expires_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
    )
  ],
  balance: 'balance6'
)
```

