
# Issue Service Credit

## Structure

`IssueServiceCredit`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | Float \| String | Required | This is a container for one-of cases. |
| `memo` | `String` | Optional | - |

## Example

```ruby
issue_service_credit = IssueServiceCredit.new(
  amount: 216.68,
  memo: 'memo6'
)
```

