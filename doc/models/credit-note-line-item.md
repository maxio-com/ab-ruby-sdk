
# Credit Note Line Item

## Structure

`CreditNoteLineItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | Unique identifier for the line item.  Useful when cross-referencing the line against individual discounts in the `discounts` or `taxes` lists. |
| `title` | `String` | Optional | A short descriptor for the credit given by this line. |
| `description` | `String` | Optional | Detailed description for the credit given by this line.  May include proration details in plain text.<br><br>Note: this string may contain line breaks that are hints for the best display format on the credit note. |
| `quantity` | `String` | Optional | The quantity or count of units credited by the line item.<br><br>This is a decimal number represented as a string. (See "About Decimal Numbers".) |
| `unit_price` | `String` | Optional | The price per unit for the line item.<br><br>When tiered pricing was used (i.e. not every unit was actually priced at the same price) this will be the blended average cost per unit and the `tiered_unit_price` field will be set to `true`. |
| `subtotal_amount` | `String` | Optional | The line subtotal, generally calculated as `quantity * unit_price`. This is the canonical amount of record for the line - when rounding differences are in play, `subtotal_amount` takes precedence over the value derived from `quantity * unit_price` (which may not have the proper precision to exactly equal this amount). |
| `discount_amount` | `String` | Optional | The approximate discount of just this line.<br><br>The value is approximated in cases where rounding errors make it difficult to apportion exactly a total discount among many lines. Several lines may have been summed prior to applying the discount to arrive at `discount_amount` for the invoice - backing that out to the discount on a single line may introduce rounding or precision errors. |
| `tax_amount` | `String` | Optional | The approximate tax of just this line.<br><br>The value is approximated in cases where rounding errors make it difficult to apportion exactly a total tax among many lines. Several lines may have been summed prior to applying the tax rate to arrive at `tax_amount` for the invoice - backing that out to the tax on a single line may introduce rounding or precision errors. |
| `total_amount` | `String` | Optional | The non-canonical total amount for the line.<br><br>`subtotal_amount` is the canonical amount for a line. The invoice `total_amount` is derived from the sum of the line `subtotal_amount`s and discounts or taxes applied thereafter.  Therefore, due to rounding or precision errors, the sum of line `total_amount`s may not equal the invoice `total_amount`. |
| `tiered_unit_price` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the actual pricing scheme for the line was tiered, so the `unit_price` shown is the blended average for all units. |
| `period_range_start` | `Date` | Optional | Start date for the period credited by this line. The format is `"YYYY-MM-DD"`. |
| `period_range_end` | `Date` | Optional | End date for the period credited by this line. The format is `"YYYY-MM-DD"`. |
| `product_id` | `Integer` | Optional | The ID of the product being credited.<br><br>This may be set even for component credits, so true product-only (non-component) credits will also have a nil `component_id`. |
| `product_version` | `Integer` | Optional | The version of the product being credited. |
| `component_id` | `Integer` | Optional | The ID of the component being credited. Will be `nil` for non-component credits. |
| `price_point_id` | `Integer` | Optional | The price point ID of the component being credited. Will be `nil` for non-component credits. |
| `billing_schedule_item_id` | `Integer` | Optional | - |
| `custom_item` | `TrueClass \| FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "uid": "uid4",
  "title": "title0",
  "description": "description6",
  "quantity": "quantity0",
  "unit_price": "unit_price2"
}
```

