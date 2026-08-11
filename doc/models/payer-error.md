
# Payer Error

## Structure

`PayerError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `last_name` | `Array[String]` | Optional | - |
| `first_name` | `Array[String]` | Optional | - |
| `email` | `Array[String]` | Optional | - |

## Example

```ruby
payer_error = PayerError.new(
  last_name: [
    'last_name9'
  ],
  first_name: [
    'first_name2',
    'first_name3',
    'first_name4'
  ],
  email: [
    'email4',
    'email3',
    'email2'
  ]
)
```

