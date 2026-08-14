
# Renewal Preview Response

## Structure

`RenewalPreviewResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `renewal_preview` | [`RenewalPreview`](../../doc/models/renewal-preview.md) | Required | - |

## Example

```ruby
renewal_preview_response = RenewalPreviewResponse.new(
  renewal_preview: RenewalPreview.new(
    next_assessment_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    subtotal_in_cents: 132,
    total_tax_in_cents: 0,
    total_discount_in_cents: 250,
    total_in_cents: 20
  )
)
```

