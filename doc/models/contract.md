
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

## Example

```ruby
contract = Contract.new(
  id: 112,
  maxio_id: 'maxio_id6',
  number: 'number2',
  register: Register.new(
    id: 54,
    maxio_id: 'maxio_id4',
    name: 'name2',
    currency_code: 'currency_code2'
  )
)
```

