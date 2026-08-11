
# Batch Job

## Structure

`BatchJob`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `finished_at` | `DateTime` | Optional | - |
| `row_count` | `Integer` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `completed` | `String` | Optional | - |

## Example

```ruby
batch_job = BatchJob.new(
  id: 240,
  finished_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  row_count: 248,
  created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  completed: 'completed2'
)
```

