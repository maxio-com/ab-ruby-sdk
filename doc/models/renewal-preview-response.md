
# Renewal Preview Response

## Structure

`RenewalPreviewResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `renewal_preview` | [`RenewalPreview`](../../doc/models/renewal-preview.md) | Required | - |

## Example (as JSON)

```json
{
  "renewal_preview": {
    "next_assessment_at": "2016-03-13T12:52:32.123Z",
    "subtotal_in_cents": 132,
    "total_tax_in_cents": 0,
    "total_discount_in_cents": 250,
    "total_in_cents": 20,
    "existing_balance_in_cents": 64,
    "total_amount_due_in_cents": 180,
    "uncalculated_taxes": false,
    "line_items": [
      {
        "transaction_type": "credit",
        "kind": "metered_component",
        "amount_in_cents": 24,
        "memo": "memo2",
        "discount_amount_in_cents": 172,
        "taxable_amount_in_cents": 42,
        "product_id": 88,
        "product_name": "product_name4",
        "component_id": 0,
        "component_handle": "component_handle8",
        "component_name": "component_name4",
        "product_handle": "product_handle0",
        "period_range_start": "period_range_start2",
        "period_range_end": "period_range_end0"
      },
      {
        "transaction_type": "credit",
        "kind": "metered_component",
        "amount_in_cents": 24,
        "memo": "memo2",
        "discount_amount_in_cents": 172,
        "taxable_amount_in_cents": 42,
        "product_id": 88,
        "product_name": "product_name4",
        "component_id": 0,
        "component_handle": "component_handle8",
        "component_name": "component_name4",
        "product_handle": "product_handle0",
        "period_range_start": "period_range_start2",
        "period_range_end": "period_range_end0"
      },
      {
        "transaction_type": "credit",
        "kind": "metered_component",
        "amount_in_cents": 24,
        "memo": "memo2",
        "discount_amount_in_cents": 172,
        "taxable_amount_in_cents": 42,
        "product_id": 88,
        "product_name": "product_name4",
        "component_id": 0,
        "component_handle": "component_handle8",
        "component_name": "component_name4",
        "product_handle": "product_handle0",
        "period_range_start": "period_range_start2",
        "period_range_end": "period_range_end0"
      }
    ]
  }
}
```

