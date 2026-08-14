
# List Public Keys Response

## Structure

`ListPublicKeysResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `chargify_js_keys` | [`Array[PublicKey]`](../../doc/models/public-key.md) | Optional | - |
| `meta` | [`ListPublicKeysMeta`](../../doc/models/list-public-keys-meta.md) | Optional | - |

## Example

```ruby
list_public_keys_response = ListPublicKeysResponse.new(
  chargify_js_keys: [
    PublicKey.new(
      public_key: 'public_key8',
      requires_security_token: false,
      created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
    ),
    PublicKey.new(
      public_key: 'public_key8',
      requires_security_token: false,
      created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
    )
  ],
  meta: ListPublicKeysMeta.new(
    total_count: 150,
    current_page: 126,
    total_pages: 138,
    per_page: 152
  )
)
```

