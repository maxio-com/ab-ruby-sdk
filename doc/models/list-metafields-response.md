
# List Metafields Response

## Structure

`ListMetafieldsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `total_count` | `Integer` | Optional | - |
| `current_page` | `Integer` | Optional | - |
| `total_pages` | `Integer` | Optional | - |
| `per_page` | `Integer` | Optional | - |
| `metafields` | [`Array[Metafield]`](../../doc/models/metafield.md) | Optional | - |

## Example

```ruby
list_metafields_response = ListMetafieldsResponse.new(
  total_count: 70,
  current_page: 46,
  total_pages: 58,
  per_page: 232,
  metafields: [
    Metafield.new(
      id: 22,
      name: 'name2',
      scope: MetafieldScope.new(
        csv: IncludeOption::EXCLUDE,
        invoices: IncludeOption::EXCLUDE,
        statements: IncludeOption::EXCLUDE,
        portal: IncludeOption::EXCLUDE,
        public_show: IncludeOption::EXCLUDE
      ),
      data_count: 10,
      input_type: MetafieldInput::BALANCE_TRACKER
    ),
    Metafield.new(
      id: 22,
      name: 'name2',
      scope: MetafieldScope.new(
        csv: IncludeOption::EXCLUDE,
        invoices: IncludeOption::EXCLUDE,
        statements: IncludeOption::EXCLUDE,
        portal: IncludeOption::EXCLUDE,
        public_show: IncludeOption::EXCLUDE
      ),
      data_count: 10,
      input_type: MetafieldInput::BALANCE_TRACKER
    ),
    Metafield.new(
      id: 22,
      name: 'name2',
      scope: MetafieldScope.new(
        csv: IncludeOption::EXCLUDE,
        invoices: IncludeOption::EXCLUDE,
        statements: IncludeOption::EXCLUDE,
        portal: IncludeOption::EXCLUDE,
        public_show: IncludeOption::EXCLUDE
      ),
      data_count: 10,
      input_type: MetafieldInput::BALANCE_TRACKER
    )
  ]
)
```

