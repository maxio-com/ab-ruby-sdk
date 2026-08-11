
# Update Invoice Item

A line item change for a draft ad hoc invoice. Supports the same attributes as line items on invoice creation, plus `uid` and `_destroy` for updating or removing existing line items.

## Structure

`UpdateInvoiceItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `title` | `String` | Optional | - |
| `quantity` | Float \| String \| nil | Optional | This is a container for one-of cases. |
| `unit_price` | Float \| String \| nil | Optional | This is a container for one-of cases. |
| `taxable` | `TrueClass \| FalseClass` | Optional | Set to true to automatically calculate taxes. Site must be configured to use and calculate taxes. If using AvaTax, a tax_code parameter must also be sent. |
| `tax_code` | `String` | Optional | A string representing the tax code related to the product type. This is especially important when using AvaTax to tax based on locale. This attribute has a max length of 25 characters. |
| `period_range_start` | `String` | Optional | YYYY-MM-DD |
| `period_range_end` | `String` | Optional | YYYY-MM-DD |
| `product_id` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `component_id` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `price_point_id` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `product_price_point_id` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `description` | `String` | Optional | **Constraints**: *Maximum Length*: `255` |
| `uid` | `String` | Optional | Unique identifier of an existing line item on the invoice. When provided, the matching line item is updated with the submitted attributes. When omitted, a new line item is added to the invoice. |
| `destroy` | `TrueClass \| FalseClass` | Optional | Set to `true` together with `uid` to remove the matching line item from the invoice. Line items not referenced in the request remain unchanged. |

## Example

```ruby
update_invoice_item = UpdateInvoiceItem.new(
  title: 'title4',
  quantity: 29.28,
  unit_price: 12.5,
  taxable: false,
  tax_code: 'tax_code6'
)
```

