
# Aggregated Entitlements Response

## Structure

`AggregatedEntitlementsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `Integer` | Required | - |
| `customer_id` | `Integer` | Required | - |
| `status` | `String` | Required | The subscription's current state, e.g. `active`, `trialing`, `canceled`. |
| `entitlements` | [`Array[AggregatedEntitlement]`](../../doc/models/aggregated-entitlement.md) | Required | - |

## Example

```ruby
aggregated_entitlements_response = AggregatedEntitlementsResponse.new(
  subscription_id: 220,
  customer_id: 148,
  status: 'status2',
  entitlements: [
    AggregatedEntitlement.new(
      feature_key: 'feature.sso',
      periodicity_key: 'usage.api_calls:1:month',
      name: 'name6',
      type: FeatureKind::SERVICE_RIGHT,
      value: true
    )
  ]
)
```

