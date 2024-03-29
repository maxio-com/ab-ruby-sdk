
# Nested Subscription Group

## Structure

`NestedSubscriptionGroup`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | The UID for the group |
| `scheme` | `Integer` | Optional | Whether the group is configured to rely on a primary subscription for billing. At this time, it will always be 1. |
| `primary_subscription_id` | `Integer` | Optional | The subscription ID of the primary within the group. Applicable to scheme 1. |
| `primary` | `TrueClass \| FalseClass` | Optional | A boolean indicating whether the subscription is the primary in the group. Applicable to scheme 1. |

## Example (as JSON)

```json
{
  "uid": "uid2",
  "scheme": 62,
  "primary_subscription_id": 10,
  "primary": false
}
```

