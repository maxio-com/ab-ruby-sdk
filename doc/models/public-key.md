
# Public Key

## Structure

`PublicKey`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `public_key` | `String` | Optional | - |
| `requires_security_token` | `TrueClass \| FalseClass` | Optional | - |
| `created_at` | `DateTime` | Optional | - |

## Example

```ruby
public_key = PublicKey.new(
  public_key: 'public_key0',
  requires_security_token: false,
  created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

