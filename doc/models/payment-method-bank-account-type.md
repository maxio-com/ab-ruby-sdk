
# Payment Method Bank Account Type

## Structure

`PaymentMethodBankAccountType`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `masked_account_number` | `String` | Required | - |
| `masked_routing_number` | `String` | Required | - |
| `type` | `String` | Required | **Default**: `'bank_account'` |

## Example (as JSON)

```json
{
  "masked_account_number": "masked_account_number2",
  "masked_routing_number": "masked_routing_number2",
  "type": "bank_account"
}
```

