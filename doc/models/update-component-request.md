
# Update Component Request

## Structure

`UpdateComponentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component` | [`UpdateComponent`](../../doc/models/update-component.md) | Required | - |

## Example

```ruby
update_component_request = UpdateComponentRequest.new(
  component: UpdateComponent.new(
    handle: 'handle4',
    name: 'name8',
    description: 'description2',
    accounting_code: 'accounting_code4',
    taxable: false,
    item_category: ItemCategory::ENUM_BUSINESS_SOFTWARE
  )
)
```

