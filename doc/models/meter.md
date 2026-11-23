
# Meter

The metering meter this wallet is paired with, or `null` for a wallet with no meter. Set on create and immutable afterward.

## Structure

`Meter`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `handle` | `String` | Optional | - |
| `conversion_rate` | `String` | Optional | How many wallet units one meter unit is worth, as a decimal string. Defaults to `"1.0"`. |

## Example

```ruby
meter = Meter.new(
  id: 198,
  name: 'name0',
  handle: 'handle6',
  conversion_rate: 'conversion_rate2'
)
```

