
# Invoice Line Item Component Cost Data

## Structure

`InvoiceLineItemComponentCostData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `rates` | [`Array<ComponentCostData>`](../../doc/models/component-cost-data.md) | Optional | - |

## Example (as JSON)

```json
{
  "rates": [
    {
      "component_code_id": 116,
      "price_point_id": 226,
      "product_id": 94,
      "quantity": "quantity0",
      "amount": "amount6",
      "pricing_scheme": "per_unit",
      "tiers": [
        {
          "starting_quantity": 116,
          "ending_quantity": 90,
          "quantity": "quantity4",
          "unit_price": "unit_price6",
          "amount": "amount0"
        },
        {
          "starting_quantity": 116,
          "ending_quantity": 90,
          "quantity": "quantity4",
          "unit_price": "unit_price6",
          "amount": "amount0"
        }
      ]
    },
    {
      "component_code_id": 116,
      "price_point_id": 226,
      "product_id": 94,
      "quantity": "quantity0",
      "amount": "amount6",
      "pricing_scheme": "per_unit",
      "tiers": [
        {
          "starting_quantity": 116,
          "ending_quantity": 90,
          "quantity": "quantity4",
          "unit_price": "unit_price6",
          "amount": "amount0"
        },
        {
          "starting_quantity": 116,
          "ending_quantity": 90,
          "quantity": "quantity4",
          "unit_price": "unit_price6",
          "amount": "amount0"
        }
      ]
    },
    {
      "component_code_id": 116,
      "price_point_id": 226,
      "product_id": 94,
      "quantity": "quantity0",
      "amount": "amount6",
      "pricing_scheme": "per_unit",
      "tiers": [
        {
          "starting_quantity": 116,
          "ending_quantity": 90,
          "quantity": "quantity4",
          "unit_price": "unit_price6",
          "amount": "amount0"
        },
        {
          "starting_quantity": 116,
          "ending_quantity": 90,
          "quantity": "quantity4",
          "unit_price": "unit_price6",
          "amount": "amount0"
        }
      ]
    }
  ]
}
```

