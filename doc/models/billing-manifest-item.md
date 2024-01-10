
# Billing Manifest Item

## Structure

`BillingManifestItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_type` | [`LineItemTransactionType`](../../doc/models/line-item-transaction-type.md) | Optional | A handle for the line item transaction type |
| `kind` | [`BillingManifestLineItemKind`](../../doc/models/billing-manifest-line-item-kind.md) | Optional | A handle for the billing manifest line item kind |
| `amount_in_cents` | `Integer` | Optional | - |
| `memo` | `String` | Optional | - |
| `discount_amount_in_cents` | `Integer` | Optional | - |
| `taxable_amount_in_cents` | `Integer` | Optional | - |
| `component_id` | `Integer` | Optional | - |
| `component_handle` | `String` | Optional | - |
| `component_name` | `String` | Optional | - |
| `product_id` | `Integer` | Optional | - |
| `product_handle` | `String` | Optional | - |
| `product_name` | `String` | Optional | - |
| `period_range_start` | `String` | Optional | - |
| `period_range_end` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "transaction_type": "info_transaction",
  "kind": "baseline",
  "amount_in_cents": 216,
  "memo": "memo4",
  "discount_amount_in_cents": 236
}
```

