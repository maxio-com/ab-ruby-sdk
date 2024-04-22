
# Webhook Response

## Structure

`WebhookResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `webhook` | [`Webhook`](../../doc/models/webhook.md) | Optional | - |

## Example (as JSON)

```json
{
  "webhook": {
    "event": "event2",
    "id": 18,
    "created_at": "2016-03-13T12:52:32.123Z",
    "last_error": "last_error4",
    "last_error_at": "2016-03-13T12:52:32.123Z",
    "accepted_at": "2016-03-13T12:52:32.123Z",
    "last_sent_at": "2016-03-13T12:52:32.123Z",
    "last_sent_url": "last_sent_url2",
    "successful": false,
    "body": "body8",
    "signature": "signature0",
    "signature_hmac_sha_256": "signature_hmac_sha_2566"
  }
}
```

