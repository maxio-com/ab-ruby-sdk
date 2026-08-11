
# Issue Service Credit Request

## Structure

`IssueServiceCreditRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `service_credit` | [`IssueServiceCredit`](../../doc/models/issue-service-credit.md) | Required | - |

## Example

```ruby
issue_service_credit_request = IssueServiceCreditRequest.new(
  service_credit: IssueServiceCredit.new(
    amount: 31.42,
    memo: 'memo0'
  )
)
```

