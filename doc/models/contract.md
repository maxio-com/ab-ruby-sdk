
# Contract

Contract linked to the scheduled renewal configuration.

## Structure

`Contract`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `maxio_id` | `String` | Optional | - |
| `number` | `String` | Optional | - |
| `register` | [`Register`](../../doc/models/register.md) | Optional | - |

## Example (as JSON)

```json
{
  "id": 136,
  "maxio_id": "maxio_id8",
  "number": "number6",
  "register": {
    "id": 54,
    "maxio_id": "maxio_id4",
    "name": "name2",
    "currency_code": "currency_code2"
  }
}
```

