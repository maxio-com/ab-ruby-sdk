
# Update Wallet Request

## Structure

`UpdateWalletRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `wallet` | [`Wallet2`](../../doc/models/wallet-2.md) | Required | - |

## Example

```ruby
update_wallet_request = UpdateWalletRequest.new(
  wallet: Wallet2.new(
    name: 'name6'
  )
)
```

