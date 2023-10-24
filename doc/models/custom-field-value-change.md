
# Custom Field Value Change

## Structure

`CustomFieldValueChange`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `event_type` | `String` | Required | - |
| `metafield_name` | `String` | Required | - |
| `metafield_id` | `Integer` | Required | - |
| `old_value` | `String` | Required | - |
| `new_value` | `String` | Required | - |
| `resource_type` | `String` | Required | - |
| `resource_id` | `Integer` | Required | - |

## Example (as JSON)

```json
{
  "event_type": "event_type2",
  "metafield_name": "metafield_name6",
  "metafield_id": 78,
  "old_value": "old_value2",
  "new_value": "new_value8",
  "resource_type": "resource_type2",
  "resource_id": 74
}
```

