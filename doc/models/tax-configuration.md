
# Tax Configuration

## Structure

`TaxConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `kind` | [`TaxConfigurationKindEnum`](../../doc/models/tax-configuration-kind-enum.md) | Optional | **Default**: `TaxConfigurationKindEnum::CUSTOM` |
| `destination_address` | [`TaxDestinationAddressEnum`](../../doc/models/tax-destination-address-enum.md) | Optional | - |
| `fully_configured` | `TrueClass \| FalseClass` | Optional | Returns `true` when Chargify has been properly configured to charge tax using the specified tax system. More details about taxes: https://maxio-chargify.zendesk.com/hc/en-us/articles/5405488905869-Taxes-Introduction<br>**Default**: `false` |

## Example (as JSON)

```json
{
  "kind": "custom",
  "fully_configured": false,
  "destination_address": "shipping_only"
}
```

