
# Site Response

## Structure

`SiteResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `site` | [`Site`](../../doc/models/site.md) | Required | - |

## Example

```ruby
site_response = SiteResponse.new(
  site: Site.new(
    id: 64,
    name: 'name4',
    subdomain: 'subdomain0',
    currency: 'currency4',
    seller_id: 228
  )
)
```

