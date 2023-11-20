
# Allocate Components

## Structure

`AllocateComponents`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `proration_upgrade_scheme` | `String` | Optional | **Default**: `'no-prorate'` |
| `proration_downgrade_scheme` | `String` | Optional | **Default**: `'no-prorate'` |
| `allocations` | [`Array<CreateAllocationRequest>`](../../doc/models/create-allocation-request.md) | Optional | - |
| `accrue_charge` | `TrueClass \| FalseClass` | Optional | - |
| `upgrade_charge` | `String` | Optional | - |
| `downgrade_credit` | `String` | Optional | - |
| `payment_collection_method` | [`PaymentCollectionMethod1`](../../doc/models/payment-collection-method-1.md) | Optional | (Optional) If not passed, the allocation(s) will use the payment collection method on the subscription<br>**Default**: `PaymentCollectionMethod1::AUTOMATIC` |

## Example (as JSON)

```json
{
  "proration_upgrade_scheme": "no-prorate",
  "proration_downgrade_scheme": "no-prorate",
  "payment_collection_method": "automatic",
  "allocations": [
    {
      "allocation": {
        "quantity": 228.94,
        "component_id": 8,
        "memo": "memo2",
        "proration_downgrade_scheme": "proration_downgrade_scheme4",
        "proration_upgrade_scheme": "proration_upgrade_scheme6",
        "accrue_charge": false
      }
    },
    {
      "allocation": {
        "quantity": 228.94,
        "component_id": 8,
        "memo": "memo2",
        "proration_downgrade_scheme": "proration_downgrade_scheme4",
        "proration_upgrade_scheme": "proration_upgrade_scheme6",
        "accrue_charge": false
      }
    }
  ],
  "accrue_charge": false,
  "upgrade_charge": "upgrade_charge4"
}
```

