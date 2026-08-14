
# Update Metafields Request

## Structure

`UpdateMetafieldsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metafields` | [Update Metafield](../../doc/models/update-metafield.md) \| Array[[Update Metafield](../../doc/models/update-metafield.md)] \| nil | Optional | This is a container for one-of cases. |

## Example

```ruby
update_metafields_request = UpdateMetafieldsRequest.new(
  metafields: UpdateMetafield.new(
    current_name: 'current_name0',
    name: 'name6',
    scope: MetafieldScope.new(
      csv: IncludeOption::EXCLUDE,
      invoices: IncludeOption::EXCLUDE,
      statements: IncludeOption::EXCLUDE,
      portal: IncludeOption::EXCLUDE,
      public_show: IncludeOption::EXCLUDE
    ),
    input_type: MetafieldInput::BALANCE_TRACKER,
    enum: [
      'enum2'
    ]
  )
)
```

