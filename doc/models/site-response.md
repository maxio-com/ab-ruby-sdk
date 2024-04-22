
# Site Response

## Structure

`SiteResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `site` | [`Site`](../../doc/models/site.md) | Required | - |

## Example (as JSON)

```json
{
  "site": {
    "id": 64,
    "name": "name4",
    "subdomain": "subdomain0",
    "currency": "currency4",
    "seller_id": 228,
    "non_primary_currencies": [
      "non_primary_currencies8",
      "non_primary_currencies9",
      "non_primary_currencies0"
    ],
    "relationship_invoicing_enabled": false,
    "customer_hierarchy_enabled": false,
    "whopays_enabled": false,
    "whopays_default_payer": "whopays_default_payer0",
    "allocation_settings": {
      "upgrade_charge": "prorated",
      "downgrade_credit": "prorated",
      "accrue_charge": "accrue_charge0"
    },
    "default_payment_collection_method": "default_payment_collection_method0",
    "organization_address": {
      "street": "street6",
      "line2": "line20",
      "city": "city6",
      "state": "state2",
      "zip": "zip0",
      "country": "country0",
      "name": "name6",
      "phone": "phone4"
    },
    "tax_configuration": {
      "kind": "custom",
      "destination_address": "shipping_then_billing",
      "fully_configured": false
    },
    "net_terms": {
      "default_net_terms": 96,
      "automatic_net_terms": 228,
      "remittance_net_terms": 112,
      "net_terms_on_remittance_signups_enabled": false,
      "custom_net_terms_enabled": false
    },
    "test": false
  }
}
```

