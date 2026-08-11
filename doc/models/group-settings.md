
# Group Settings

## Structure

`GroupSettings`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `target` | [`GroupTarget`](../../doc/models/group-target.md) | Required | Attributes of the target customer who will be the responsible payer of the created subscription. Required. |
| `billing` | [`GroupBilling`](../../doc/models/group-billing.md) | Optional | (Optional) Attributes related to billing date and accrual. Note: Only applicable for new subscriptions. |

## Example

```ruby
group_settings = GroupSettings.new(
  target: GroupTarget.new(
    type: GroupTargetType::PARENT,
    id: 236
  ),
  billing: GroupBilling.new(
    accrue: false,
    align_date: false,
    prorate: false
  )
)
```

