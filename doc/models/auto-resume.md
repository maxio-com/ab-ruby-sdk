
# Auto Resume

## Structure

`AutoResume`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `automatically_resume_at` | `DateTime` | Optional | - |

## Example

```ruby
auto_resume = AutoResume.new(
  automatically_resume_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

