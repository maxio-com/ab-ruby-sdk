
# Subscription Preview

## Structure

`SubscriptionPreview`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `current_billing_manifest` | [`BillingManifest`](../../doc/models/billing-manifest.md) | Optional | - |
| `next_billing_manifest` | [`BillingManifest`](../../doc/models/billing-manifest.md) | Optional | - |

## Example

```ruby
subscription_preview = SubscriptionPreview.new(
  current_billing_manifest: BillingManifest.new(
    line_items: [
      BillingManifestItem.new(
        transaction_type: LineItemTransactionType::CREDIT,
        kind: BillingManifestLineItemKind::COMPONENT,
        amount_in_cents: 24,
        memo: 'memo2',
        discount_amount_in_cents: 172
      )
    ],
    total_in_cents: 38,
    total_discount_in_cents: 24,
    total_tax_in_cents: 18,
    subtotal_in_cents: 150
  ),
  next_billing_manifest: BillingManifest.new(
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
    total_in_cents: 62,
    total_discount_in_cents: 208,
    total_tax_in_cents: 42,
    subtotal_in_cents: 174
  )
)
```

