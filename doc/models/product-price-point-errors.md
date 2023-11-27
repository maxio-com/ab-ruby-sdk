
# Product Price Point Errors

## Structure

`ProductPricePointErrors`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | `String` | Optional | - |
| `interval` | `Array<String>` | Optional | - |
| `interval_unit` | `Array<String>` | Optional | - |
| `name` | `Array<String>` | Optional | - |
| `price` | `Array<String>` | Optional | - |
| `price_in_cents` | `Array<String>` | Optional | - |

## Example (as JSON)

```json
{
  "price_point": "can't be blank",
  "interval": [
    "Recurring Interval: cannot be blank.",
    "Recurring Interval: must be greater than or equal to 1."
  ],
  "interval_unit": [
    "Interval unit: cannot be blank.",
    "Interval unit: must be 'month' or 'day'."
  ],
  "name": [
    "Name: cannot be blank."
  ],
  "price": [
    "Price: is not a number.",
    "Price: must be greater than or equal to 0."
  ],
  "price_in_cents": [
    "Price in cents: cannot be blank."
  ]
}
```

