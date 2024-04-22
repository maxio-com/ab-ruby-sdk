
# Bank Account Response

## Structure

`BankAccountResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_profile` | [`BankAccountPaymentProfile`](../../doc/models/bank-account-payment-profile.md) | Required | - |

## Example (as JSON)

```json
{
  "payment_profile": {
    "masked_bank_routing_number": "masked_bank_routing_number0",
    "masked_bank_account_number": "masked_bank_account_number6",
    "verified": false,
    "id": 44,
    "first_name": "first_name4",
    "last_name": "last_name2",
    "customer_id": 82,
    "current_vault": "gocardless",
    "vault_token": "vault_token6",
    "billing_address": "billing_address4",
    "billing_city": "billing_city8",
    "billing_state": "billing_state2",
    "billing_zip": "billing_zip2",
    "billing_country": "billing_country2",
    "customer_vault_token": "customer_vault_token2",
    "billing_address_2": "billing_address_26",
    "bank_name": "bank_name0",
    "bank_account_type": "checking",
    "bank_account_holder_type": "personal",
    "payment_type": "bank_account",
    "site_gateway_setting_id": 104,
    "gateway_handle": "gateway_handle4"
  }
}
```

