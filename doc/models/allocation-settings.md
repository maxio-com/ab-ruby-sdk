
# Allocation Settings

## Structure

`AllocationSettings`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `upgrade_charge` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided. |
| `downgrade_credit` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided. |
| `accrue_charge` | `String` | Optional | Either "true" or "false". |

## Example

```ruby
allocation_settings = AllocationSettings.new(
  upgrade_charge: CreditType::PRORATED,
  downgrade_credit: CreditType::PRORATED,
  accrue_charge: 'accrue_charge0'
)
```

