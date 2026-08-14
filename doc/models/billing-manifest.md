
# Billing Manifest

## Structure

`BillingManifest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `line_items` | [`Array[BillingManifestItem]`](../../doc/models/billing-manifest-item.md) | Optional | - |
| `total_in_cents` | `Integer` | Optional | - |
| `total_discount_in_cents` | `Integer` | Optional | - |
| `total_tax_in_cents` | `Integer` | Optional | - |
| `subtotal_in_cents` | `Integer` | Optional | - |
| `start_date` | `DateTime` | Optional | - |
| `end_date` | `DateTime` | Optional | - |
| `period_type` | `String` | Optional | - |
| `existing_balance_in_cents` | `Integer` | Optional | - |

## Example

```ruby
billing_manifest = BillingManifest.new(
  line_items: [
    BillingManifestItem.new(
      transaction_type: LineItemTransactionType::CREDIT,
      kind: BillingManifestLineItemKind::COMPONENT,
      amount_in_cents: 24,
      memo: 'memo2',
      discount_amount_in_cents: 172
    ),
    BillingManifestItem.new(
      transaction_type: LineItemTransactionType::CREDIT,
      kind: BillingManifestLineItemKind::COMPONENT,
      amount_in_cents: 24,
      memo: 'memo2',
      discount_amount_in_cents: 172
    ),
    BillingManifestItem.new(
      transaction_type: LineItemTransactionType::CREDIT,
      kind: BillingManifestLineItemKind::COMPONENT,
      amount_in_cents: 24,
      memo: 'memo2',
      discount_amount_in_cents: 172
    )
  ],
  total_in_cents: 6,
  total_discount_in_cents: 8,
  total_tax_in_cents: 242,
  subtotal_in_cents: 118
)
```

