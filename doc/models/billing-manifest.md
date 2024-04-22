
# Billing Manifest

## Structure

`BillingManifest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `line_items` | [`Array<BillingManifestItem>`](../../doc/models/billing-manifest-item.md) | Optional | - |
| `total_in_cents` | `Integer` | Optional | - |
| `total_discount_in_cents` | `Integer` | Optional | - |
| `total_tax_in_cents` | `Integer` | Optional | - |
| `subtotal_in_cents` | `Integer` | Optional | - |
| `start_date` | `DateTime` | Optional | - |
| `end_date` | `DateTime` | Optional | - |
| `period_type` | `String` | Optional | - |
| `existing_balance_in_cents` | `Integer` | Optional | - |

## Example (as JSON)

```json
{
  "line_items": [
    {
      "transaction_type": "credit",
      "kind": "component",
      "amount_in_cents": 24,
      "memo": "memo2",
      "discount_amount_in_cents": 172,
      "taxable_amount_in_cents": 42,
      "component_id": 0,
      "component_handle": "component_handle8",
      "component_name": "component_name4",
      "product_id": 88,
      "product_handle": "product_handle0",
      "product_name": "product_name4",
      "period_range_start": "period_range_start2",
      "period_range_end": "period_range_end0"
    },
    {
      "transaction_type": "credit",
      "kind": "component",
      "amount_in_cents": 24,
      "memo": "memo2",
      "discount_amount_in_cents": 172,
      "taxable_amount_in_cents": 42,
      "component_id": 0,
      "component_handle": "component_handle8",
      "component_name": "component_name4",
      "product_id": 88,
      "product_handle": "product_handle0",
      "product_name": "product_name4",
      "period_range_start": "period_range_start2",
      "period_range_end": "period_range_end0"
    },
    {
      "transaction_type": "credit",
      "kind": "component",
      "amount_in_cents": 24,
      "memo": "memo2",
      "discount_amount_in_cents": 172,
      "taxable_amount_in_cents": 42,
      "component_id": 0,
      "component_handle": "component_handle8",
      "component_name": "component_name4",
      "product_id": 88,
      "product_handle": "product_handle0",
      "product_name": "product_name4",
      "period_range_start": "period_range_start2",
      "period_range_end": "period_range_end0"
    }
  ],
  "total_in_cents": 192,
  "total_discount_in_cents": 178,
  "total_tax_in_cents": 172,
  "subtotal_in_cents": 48
}
```

