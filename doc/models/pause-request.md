
# Pause Request

Allows you to pause a Subscription.

## Structure

`PauseRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `hold` | [`AutoResume`](../../doc/models/auto-resume.md) | Optional | - |

## Example

```ruby
pause_request = PauseRequest.new(
  hold: AutoResume.new(
    automatically_resume_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  )
)
```

