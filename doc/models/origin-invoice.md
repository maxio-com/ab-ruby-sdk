
# Origin Invoice

## Structure

`OriginInvoice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | The UID of the invoice serving as an origin invoice. |
| `number` | `String` | Optional | The number of the invoice serving as an origin invoice. |

## Example

```ruby
origin_invoice = OriginInvoice.new(
  uid: 'uid8',
  number: 'number4'
)
```

