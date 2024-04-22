
# List Subscription Group Prepayment

## Structure

`ListSubscriptionGroupPrepayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `prepayment` | [`ListSubcriptionGroupPrepaymentItem`](../../doc/models/list-subcription-group-prepayment-item.md) | Required | - |

## Example (as JSON)

```json
{
  "prepayment": {
    "id": 38,
    "subscription_group_uid": "subscription_group_uid2",
    "amount_in_cents": 124,
    "remaining_amount_in_cents": 182,
    "details": "details8",
    "external": false,
    "memo": "memo2",
    "payment_type": "credit_card",
    "created_at": "2016-03-13T12:52:32.123Z"
  }
}
```

