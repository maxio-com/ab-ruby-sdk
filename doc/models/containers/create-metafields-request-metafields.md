
# Create Metafields Request Metafields

## Data Type

`CreateMetafield | Array[CreateMetafield]`

## Cases

| Type |
|  --- |
| [`CreateMetafield`](../../../doc/models/create-metafield.md) |
| [`Array[CreateMetafield]`](../../../doc/models/create-metafield.md) |

## CreateMetafield

### Initialization Code

#### Example

```ruby
value = CreateMetafield.new(
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

## Array[CreateMetafield]

### Initialization Code

#### Example

```ruby
value = [
  CreateMetafield.new
]
```

