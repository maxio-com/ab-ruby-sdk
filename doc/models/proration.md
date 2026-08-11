
# Proration

## Structure

`Proration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `preserve_period` | `TrueClass \| FalseClass` | Optional | The alternative to sending preserve_period as a direct attribute to migration |

## Example

```ruby
proration = Proration.new(
  preserve_period: false
)
```

