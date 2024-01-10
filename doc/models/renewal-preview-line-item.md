
# Renewal Preview Line Item

## Structure

`RenewalPreviewLineItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_type` | [`LineItemTransactionType`](../../doc/models/line-item-transaction-type.md) | Optional | A handle for the line item transaction type |
| `kind` | [`LineItemKind`](../../doc/models/line-item-kind.md) | Optional | A handle for the line item kind |
| `amount_in_cents` | `Integer` | Optional | - |
| `memo` | `String` | Optional | - |
| `discount_amount_in_cents` | `Integer` | Optional | - |
| `taxable_amount_in_cents` | `Integer` | Optional | - |
| `product_id` | `Integer` | Optional | - |
| `product_name` | `String` | Optional | - |
| `component_id` | `Integer` | Optional | - |
| `component_handle` | `String` | Optional | - |
| `component_name` | `String` | Optional | - |
| `product_handle` | `String` | Optional | - |
| `period_range_start` | `String` | Optional | - |
| `period_range_end` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "transaction_type": "charge",
  "kind": "prepaid_usage_component",
  "amount_in_cents": 154,
  "memo": "memo0",
  "discount_amount_in_cents": 214
}
```

