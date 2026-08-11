
# Subscription Preview Response

## Structure

`SubscriptionPreviewResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_preview` | [`SubscriptionPreview`](../../doc/models/subscription-preview.md) | Required | - |

## Example

```ruby
subscription_preview_response = SubscriptionPreviewResponse.new(
  subscription_preview: SubscriptionPreview.new(
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
)
```

