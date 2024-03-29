
# Allocate Components

## Structure

`AllocateComponents`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `proration_upgrade_scheme` | `String` | Optional | - |
| `proration_downgrade_scheme` | `String` | Optional | - |
| `allocations` | [`Array<CreateAllocation>`](../../doc/models/create-allocation.md) | Optional | - |
| `accrue_charge` | `TrueClass \| FalseClass` | Optional | - |
| `upgrade_charge` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided.<br>Available values: `full`, `prorated`, `none`. |
| `downgrade_credit` | [`CreditType`](../../doc/models/credit-type.md) | Optional | The type of credit to be created when upgrading/downgrading. Defaults to the component and then site setting if one is not provided.<br>Available values: `full`, `prorated`, `none`. |
| `payment_collection_method` | [`CollectionMethod`](../../doc/models/collection-method.md) | Optional | (Optional) If not passed, the allocation(s) will use the payment collection method on the subscription |
| `initiate_dunning` | `TrueClass \| FalseClass` | Optional | If true, if the immediate component payment fails, initiate dunning for the subscription.<br>Otherwise, leave the charges on the subscription to pay for at renewal. |

## Example (as JSON)

```json
{
  "proration_upgrade_scheme": "proration_upgrade_scheme2",
  "proration_downgrade_scheme": "proration_downgrade_scheme0",
  "allocations": [
    {
      "quantity": 26.48,
      "component_id": 242,
      "memo": "memo6",
      "proration_downgrade_scheme": "proration_downgrade_scheme0",
      "proration_upgrade_scheme": "proration_upgrade_scheme2",
      "accrue_charge": false
    },
    {
      "quantity": 26.48,
      "component_id": 242,
      "memo": "memo6",
      "proration_downgrade_scheme": "proration_downgrade_scheme0",
      "proration_upgrade_scheme": "proration_upgrade_scheme2",
      "accrue_charge": false
    }
  ],
  "accrue_charge": false,
  "upgrade_charge": "full"
}
```

