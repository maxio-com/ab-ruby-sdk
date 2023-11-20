
# Allocation Payment

Information for captured payment, if applicable

## Structure

`AllocationPayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `amount_in_cents` | `Integer` | Optional | - |
| `success` | `TrueClass \| FalseClass` | Optional | - |
| `memo` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "id": 146,
  "amount_in_cents": 232,
  "success": false,
  "memo": "memo2"
}
```

