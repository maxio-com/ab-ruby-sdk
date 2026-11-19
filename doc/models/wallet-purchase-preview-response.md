
# Wallet Purchase Preview Response

## Structure

`WalletPurchasePreviewResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `wallet_purchase_previews` | [`Array[WalletPurchasePreview]`](../../doc/models/wallet-purchase-preview.md) | Required | - |

## Example

```ruby
wallet_purchase_preview_response = WalletPurchasePreviewResponse.new(
  wallet_purchase_previews: [
    WalletPurchasePreview.new(
      price_point_id: 126,
      currency: 'USD',
      quantity: 'quantity6',
      amount: 'amount2'
    )
  ]
)
```

