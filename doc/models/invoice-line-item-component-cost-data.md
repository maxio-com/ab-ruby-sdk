
# Invoice Line Item Component Cost Data

## Structure

`InvoiceLineItemComponentCostData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `rates` | [`Array[ComponentCostData]`](../../doc/models/component-cost-data.md) | Optional | - |

## Example

```ruby
invoice_line_item_component_cost_data = InvoiceLineItemComponentCostData.new(
  rates: [
    ComponentCostData.new(
      component_code_id: 116,
      price_point_id: 226,
      product_id: 94,
      quantity: 'quantity0',
      amount: 'amount6'
    )
  ]
)
```

