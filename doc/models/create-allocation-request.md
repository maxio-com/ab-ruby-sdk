
# Create Allocation Request

## Structure

`CreateAllocationRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `allocation` | [`CreateAllocation`](../../doc/models/create-allocation.md) | Required | - |

## Example (as JSON)

```json
{
  "allocation": {
    "quantity": 228.94,
    "component_id": 8,
    "memo": "memo2",
    "proration_downgrade_scheme": "proration_downgrade_scheme4",
    "proration_upgrade_scheme": "proration_upgrade_scheme6",
    "accrue_charge": false,
    "downgrade_credit": "prorated",
    "upgrade_charge": "none",
    "initiate_dunning": false,
    "price_point_id": "String1",
    "billing_schedule": {
      "initial_billing_at": "2016-03-13"
    }
  }
}
```

