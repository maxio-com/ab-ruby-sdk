
# Add Subscription to a Group

## Structure

`AddSubscriptionToAGroup`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `group` | [Group Settings](../../doc/models/group-settings.md) \| TrueClass \| FalseClass \| nil | Optional | This is a container for one-of cases. |

## Example (as JSON)

```json
{
  "group": {
    "target": {
      "type": "parent",
      "id": 236
    },
    "billing": {
      "accrue": false,
      "align_date": false,
      "prorate": false
    }
  }
}
```

