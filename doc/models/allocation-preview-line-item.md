
# Allocation Preview Line Item

## Structure

`AllocationPreviewLineItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_type` | [`LineItemTransactionType`](../../doc/models/line-item-transaction-type.md) | Optional | A handle for the line item transaction type |
| `kind` | [`AllocationPreviewLineItemKind`](../../doc/models/allocation-preview-line-item-kind.md) | Optional | A handle for the line item kind for allocation preview |
| `amount_in_cents` | `Integer` | Optional | - |
| `memo` | `String` | Optional | - |
| `discount_amount_in_cents` | `Integer` | Optional | - |
| `taxable_amount_in_cents` | `Integer` | Optional | - |
| `component_id` | `Integer` | Optional | - |
| `component_handle` | `String` | Optional | - |
| `direction` | [`AllocationPreviewDirection`](../../doc/models/allocation-preview-direction.md) | Optional | Visible when using Fine-grained Component Control. |

## Example

```ruby
allocation_preview_line_item = AllocationPreviewLineItem.new(
  transaction_type: LineItemTransactionType::CHARGE,
  kind: AllocationPreviewLineItemKind::COUPON,
  amount_in_cents: 58,
  memo: 'memo8',
  discount_amount_in_cents: 138
)
```

