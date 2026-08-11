
# Create On Off Component

## Structure

`CreateOnOffComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `on_off_component` | [`OnOffComponent`](../../doc/models/on-off-component.md) | Required | - |

## Example

```ruby
create_on_off_component = CreateOnOffComponent.new(
  on_off_component: OnOffComponent.new(
    name: 'name6',
    unit_price: 'String5',
    description: 'description6',
    handle: 'handle2',
    taxable: false,
    upgrade_charge: CreditType::FULL,
    downgrade_credit: CreditType::FULL
  )
)
```

