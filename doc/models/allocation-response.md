
# Allocation Response

## Structure

`AllocationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `allocation` | [`Allocation`](../../doc/models/allocation.md) | Optional | - |

## Example (as JSON)

```json
{
  "allocation": {
    "allocation_id": 238,
    "component_id": 8,
    "component_handle": "component_handle8",
    "subscription_id": 8,
    "quantity": 32,
    "previous_quantity": 238,
    "memo": "memo2",
    "timestamp": "2016-03-13T12:52:32.123Z",
    "created_at": "2016-03-13T12:52:32.123Z",
    "proration_upgrade_scheme": "proration_upgrade_scheme6",
    "proration_downgrade_scheme": "proration_downgrade_scheme4",
    "price_point_id": 224,
    "price_point_name": "price_point_name8",
    "price_point_handle": "price_point_handle2",
    "interval": 50,
    "interval_unit": "day",
    "previous_price_point_id": 144,
    "accrue_charge": false,
    "initiate_dunning": false,
    "upgrade_charge": "none",
    "downgrade_credit": "prorated",
    "payment": {
      "id": 96,
      "amount_in_cents": 74,
      "success": false,
      "memo": "memo0"
    },
    "expires_at": "2016-03-13T12:52:32.123Z",
    "used_quantity": 130,
    "charge_id": 120
  }
}
```

