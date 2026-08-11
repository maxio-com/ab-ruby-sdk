
# Create Metafields Request

## Structure

`CreateMetafieldsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metafields` | [Create Metafield](../../doc/models/create-metafield.md) \| Array[[Create Metafield](../../doc/models/create-metafield.md)] | Required | This is a container for one-of cases. |

## Example

```ruby
create_metafields_request = CreateMetafieldsRequest.new(
  metafields: CreateMetafield.new(
    name: 'my_field',
    scope: MetafieldScope.new(
      csv: IncludeOption::EXCLUDE,
      invoices: IncludeOption::EXCLUDE,
      statements: IncludeOption::EXCLUDE,
      portal: IncludeOption::EXCLUDE,
      public_show: IncludeOption::EXCLUDE,
      public_edit: IncludeOption::EXCLUDE
    ),
    input_type: MetafieldInput::TEXT,
    enum: [
      'string'
    ]
  )
)
```

