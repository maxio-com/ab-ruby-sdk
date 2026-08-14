
# Proforma Error

## Structure

`ProformaError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription` | [`BaseStringError`](../../doc/models/base-string-error.md) | Optional | The error is base if it is not directly associated with a single attribute. |

## Example

```ruby
proforma_error = ProformaError.new(
  subscription: BaseStringError.new(
    base: [
      'base3',
      'base4'
    ]
  )
)
```

