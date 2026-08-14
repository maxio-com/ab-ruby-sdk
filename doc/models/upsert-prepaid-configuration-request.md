
# Upsert Prepaid Configuration Request

## Structure

`UpsertPrepaidConfigurationRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `prepaid_configuration` | [`UpsertPrepaidConfiguration`](../../doc/models/upsert-prepaid-configuration.md) | Required | - |

## Example

```ruby
upsert_prepaid_configuration_request = UpsertPrepaidConfigurationRequest.new(
  prepaid_configuration: UpsertPrepaidConfiguration.new(
    initial_funding_amount_in_cents: 74,
    replenish_to_amount_in_cents: 76,
    auto_replenish: false,
    replenish_threshold_amount_in_cents: 20
  )
)
```

