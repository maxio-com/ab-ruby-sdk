
# Allocation Preview Response

## Structure

`AllocationPreviewResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `allocation_preview` | [`AllocationPreview`](../../doc/models/allocation-preview.md) | Required | - |

## Example (as JSON)

```json
{
  "allocation_preview": {
    "start_date": "2016-03-13T12:52:32.123Z",
    "end_date": "2016-03-13T12:52:32.123Z",
    "subtotal_in_cents": 240,
    "total_tax_in_cents": 108,
    "total_discount_in_cents": 142,
    "total_in_cents": 128,
    "direction": "upgrade",
    "proration_scheme": "proration_scheme8",
    "line_items": [
      {
        "transaction_type": "credit",
        "kind": "quantity_based_component",
        "amount_in_cents": 24,
        "memo": "memo2",
        "discount_amount_in_cents": 172,
        "taxable_amount_in_cents": 42,
        "component_id": 0,
        "component_handle": "component_handle8",
        "direction": "upgrade"
      }
    ],
    "accrue_charge": false,
    "allocations": [
      {
        "component_id": 242,
        "subscription_id": 242,
        "quantity": 10,
        "previous_quantity": 96,
        "memo": "memo6",
        "timestamp": "timestamp0",
        "proration_upgrade_scheme": "proration_upgrade_scheme2",
        "proration_downgrade_scheme": "proration_downgrade_scheme0",
        "accrue_charge": false,
        "upgrade_charge": "prorated",
        "downgrade_credit": "prorated",
        "price_point_id": 246,
        "interval": 184,
        "interval_unit": "day",
        "previous_price_point_id": 90,
        "price_point_handle": "price_point_handle2",
        "price_point_name": "price_point_name4",
        "component_handle": "component_handle2"
      }
    ],
    "period_type": "period_type6",
    "existing_balance_in_cents": 212
  }
}
```

