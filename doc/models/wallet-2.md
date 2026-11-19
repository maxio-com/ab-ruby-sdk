
# Wallet 2

## Structure

`Wallet2`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | A merchant-facing label for the wallet. Surrounding spaces are stripped; a blank or `null` value clears it.<br><br>**Constraints**: *Maximum Length*: `255` |

## Example

```ruby
wallet2 = Wallet2.new(
  name: 'name2'
)
```

