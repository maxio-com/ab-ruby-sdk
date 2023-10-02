
# Overage Pricing

## Structure

`OveragePricing`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pricing_scheme` | [Pricing Scheme](../../doc/models/pricing-scheme-enum.md) | Required | This is a container for one-of cases. |
| `prices` | Array[Array[[Price](../../doc/models/price.md)]] \| nil | Optional | This is Array of a container for one-of cases. |

## Example (as JSON)

```json
{
  "pricing_scheme": "volume",
  "prices": [
    [
      {
        "starting_quantity": 40,
        "ending_quantity": 14,
        "unit_price": 212
      }
    ],
    [
      {
        "starting_quantity": 40,
        "ending_quantity": 14,
        "unit_price": 212
      },
      {
        "starting_quantity": 40,
        "ending_quantity": 14,
        "unit_price": 212
      }
    ],
    [
      {
        "starting_quantity": 40,
        "ending_quantity": 14,
        "unit_price": 212
      },
      {
        "starting_quantity": 40,
        "ending_quantity": 14,
        "unit_price": 212
      },
      {
        "starting_quantity": 40,
        "ending_quantity": 14,
        "unit_price": 212
      }
    ]
  ]
}
```

