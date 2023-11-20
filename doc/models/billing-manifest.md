
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
| `start_date` | `String` | Optional | - |
| `end_date` | `String` | Optional | - |
| `period_type` | `String` | Optional | - |
| `existing_balance_in_cents` | `Integer` | Optional | - |

## Example (as JSON)

```json
{
  "line_items": [
    {
      "transaction_type": "transaction_type0",
      "kind": "kind6",
      "amount_in_cents": 24,
      "memo": "memo2",
      "discount_amount_in_cents": 172
    },
    {
      "transaction_type": "transaction_type0",
      "kind": "kind6",
      "amount_in_cents": 24,
      "memo": "memo2",
      "discount_amount_in_cents": 172
    },
    {
      "transaction_type": "transaction_type0",
      "kind": "kind6",
      "amount_in_cents": 24,
      "memo": "memo2",
      "discount_amount_in_cents": 172
    }
  ],
  "total_in_cents": 192,
  "total_discount_in_cents": 178,
  "total_tax_in_cents": 172,
  "subtotal_in_cents": 48
}
```

