
# Tax Configuration

## Structure

`TaxConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `kind` | [`TaxConfigurationKind`](../../doc/models/tax-configuration-kind.md) | Optional | **Default**: `TaxConfigurationKind::CUSTOM` |
| `destination_address` | [`TaxDestinationAddress`](../../doc/models/tax-destination-address.md) | Optional | - |
| `fully_configured` | `TrueClass \| FalseClass` | Optional | Returns `true` when Chargify has been properly configured to charge tax using the specified tax system. More details about taxes: https://maxio.zendesk.com/hc/en-us/articles/24287012608909-Taxes-Overview<br><br>**Default**: `false` |

## Example

```ruby
tax_configuration = TaxConfiguration.new(
  kind: TaxConfigurationKind::CUSTOM,
  destination_address: TaxDestinationAddress::SHIPPING_THEN_BILLING,
  fully_configured: false
)
```

