
# Update Invoice

Attributes of a draft ad hoc invoice which can be updated. Only the submitted attributes are changed.

## Structure

`UpdateInvoice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `line_items` | [`Array[UpdateInvoiceItem]`](../../doc/models/update-invoice-item.md) | Optional | Line item changes to apply. Line items without a `uid` are added, line items with a `uid` are updated, and line items with a `uid` and `_destroy` set to `true` are removed. Existing line items not referenced in the array remain unchanged. |
| `issue_date` | `Date` | Optional | New issue date for the invoice (format YYYY-MM-DD). This date is interpreted and validated in your site's time zone. It must be today or a date in the past — future dates are not accepted. The due date is recalculated from the issue date and net terms. |
| `net_terms` | `Integer` | Optional | Number of days after the issue date on which the invoice is due. The due date is recalculated when net terms or the issue date change. |
| `payment_instructions` | `String` | Optional | Custom payment instructions displayed on the invoice. |
| `memo` | `String` | Optional | A custom memo displayed on the invoice. |
| `seller_address` | [`CreateInvoiceAddress`](../../doc/models/create-invoice-address.md) | Optional | Replaces the seller address on the invoice |
| `billing_address` | [`CreateInvoiceAddress`](../../doc/models/create-invoice-address.md) | Optional | Replaces the billing address on the invoice |
| `shipping_address` | [`CreateInvoiceAddress`](../../doc/models/create-invoice-address.md) | Optional | Replaces the shipping address on the invoice |
| `coupons` | [`Array[CreateInvoiceCoupon]`](../../doc/models/create-invoice-coupon.md) | Optional | When present, replaces all discounts currently applied to the invoice. Send an empty array to remove all discounts. |

## Example

```ruby
update_invoice = UpdateInvoice.new(
  line_items: [
    UpdateInvoiceItem.new(
      title: 'title4',
      quantity: 56.68,
      unit_price: 39.9,
      taxable: false,
      tax_code: 'tax_code6'
    ),
    UpdateInvoiceItem.new(
      title: 'title4',
      quantity: 56.68,
      unit_price: 39.9,
      taxable: false,
      tax_code: 'tax_code6'
    )
  ],
  issue_date: Date.iso8601('2024-01-01'),
  net_terms: 130,
  payment_instructions: 'payment_instructions4',
  memo: 'memo2'
)
```

