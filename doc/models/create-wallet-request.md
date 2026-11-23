
# Create Wallet Request

## Structure

`CreateWalletRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `wallet` | [`Wallet1`](../../doc/models/wallet-1.md) | Required | - |

## Example

```ruby
create_wallet_request = CreateWalletRequest.new(
  wallet: Wallet1.new(
    subscription_id: 94,
    wallet_product_id: 154,
    name: 'name6',
    depletion_policy: 'depletion_policy4',
    hard_stop_overflow: WalletHardStopOverflow::DISCARD,
    meter_id: 146,
    conversion_rate: 'String9',
    initial_balance: 'String1'
  )
)
```

