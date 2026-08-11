
# Create Metafield

## Structure

`CreateMetafield`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | - |
| `scope` | [`MetafieldScope`](../../doc/models/metafield-scope.md) | Optional | Warning: When updating a metafield's scope attribute, all scope attributes must be passed. Partially complete scope attributes will override the existing settings. |
| `input_type` | [`MetafieldInput`](../../doc/models/metafield-input.md) | Optional | Indicates the type of metafield. A text metafield allows any string value. Dropdown and radio metafields have a set of values that can be selected. Defaults to 'text'. |
| `enum` | `Array[String]` | Optional | Only applicable when input_type is radio or dropdown. Empty strings will not be submitted. |

## Example

```ruby
create_metafield = CreateMetafield.new(
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
```

