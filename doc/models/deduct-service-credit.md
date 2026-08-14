
# Deduct Service Credit

## Structure

`DeductServiceCredit`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | String \| Float | Required | This is a container for one-of cases. |
| `memo` | `String` | Optional | - |

## Example

```ruby
deduct_service_credit = DeductServiceCredit.new(
  amount: 'String3',
  memo: 'memo4'
)
```

