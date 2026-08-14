
# Register

## Structure

`Register`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `maxio_id` | `String` | Optional | - |
| `name` | `String` | Optional | - |
| `currency_code` | `String` | Optional | The ISO 4217 currency code (3 character string) representing the currency of an invoice transaction. |

## Example

```ruby
register = Register.new(
  id: 54,
  maxio_id: 'maxio_id4',
  name: 'name2',
  currency_code: 'currency_code2'
)
```

