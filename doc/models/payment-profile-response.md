
# Payment Profile Response

## Structure

`PaymentProfileResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_profile` | [Bank Account Payment Profile](../../doc/models/bank-account-payment-profile.md) \| [Credit Card Payment Profile](../../doc/models/credit-card-payment-profile.md) | Required | This is a container for one-of cases. |

## Example (as JSON)

```json
{
  "payment_profile": {
    "masked_bank_routing_number": "masked_bank_routing_number8",
    "masked_bank_account_number": "masked_bank_account_number8",
    "verified": false,
    "id": 188,
    "first_name": "first_name6",
    "last_name": "last_name4",
    "customer_id": 226,
    "current_vault": "authorizenet",
    "vault_token": "vault_token8",
    "billing_address": "billing_address8",
    "billing_city": "billing_city4",
    "billing_state": "billing_state0",
    "billing_zip": "billing_zip4",
    "billing_country": "billing_country0",
    "customer_vault_token": "customer_vault_token4",
    "billing_address_2": "billing_address_28",
    "bank_name": "bank_name8",
    "bank_account_type": "checking",
    "bank_account_holder_type": "personal",
    "payment_type": "paypal_account",
    "site_gateway_setting_id": 248,
    "gateway_handle": "gateway_handle2"
  }
}
```

