
# Site

## Structure

`Site`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `subdomain` | `String` | Optional | - |
| `currency` | `String` | Optional | - |
| `seller_id` | `Integer` | Optional | - |
| `non_primary_currencies` | `Array<String>` | Optional | - |
| `relationship_invoicing_enabled` | `TrueClass \| FalseClass` | Optional | - |
| `customer_hierarchy_enabled` | `TrueClass \| FalseClass` | Optional | - |
| `whopays_enabled` | `TrueClass \| FalseClass` | Optional | - |
| `whopays_default_payer` | `String` | Optional | - |
| `allocation_settings` | [`AllocationSettings`](../../doc/models/allocation-settings.md) | Optional | - |
| `default_payment_collection_method` | `String` | Optional | - |
| `organization_address` | [`OrganizationAddress`](../../doc/models/organization-address.md) | Optional | - |
| `tax_configuration` | [`TaxConfiguration`](../../doc/models/tax-configuration.md) | Optional | - |
| `net_terms` | [`NetTerms`](../../doc/models/net-terms.md) | Optional | - |
| `test` | `TrueClass \| FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "id": 34,
  "name": "name0",
  "subdomain": "subdomain4",
  "currency": "currency0",
  "seller_id": 198
}
```

