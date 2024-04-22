
# Subscription Preview Response

## Structure

`SubscriptionPreviewResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_preview` | [`SubscriptionPreview`](../../doc/models/subscription-preview.md) | Required | - |

## Example (as JSON)

```json
{
  "subscription_preview": {
    "current_billing_manifest": {
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
        }
      ],
      "total_in_cents": 38,
      "total_discount_in_cents": 24,
      "total_tax_in_cents": 18,
      "subtotal_in_cents": 150,
      "start_date": "2016-03-13T12:52:32.123Z",
      "end_date": "2016-03-13T12:52:32.123Z",
      "period_type": "period_type8",
      "existing_balance_in_cents": 46
    },
    "next_billing_manifest": {
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
      "total_in_cents": 62,
      "total_discount_in_cents": 208,
      "total_tax_in_cents": 42,
      "subtotal_in_cents": 174,
      "start_date": "2016-03-13T12:52:32.123Z",
      "end_date": "2016-03-13T12:52:32.123Z",
      "period_type": "period_type0",
      "existing_balance_in_cents": 22
    }
  }
}
```

