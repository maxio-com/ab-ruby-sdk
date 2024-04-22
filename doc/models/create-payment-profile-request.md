
# Create Payment Profile Request

## Structure

`CreatePaymentProfileRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_profile` | [`CreatePaymentProfile`](../../doc/models/create-payment-profile.md) | Required | - |

## Example (as JSON)

```json
{
  "payment_profile": {
    "chargify_token": "tok_9g6hw85pnpt6knmskpwp4ttt",
    "full_number": "5424000000000015",
    "id": 44,
    "payment_type": "bank_account",
    "first_name": "first_name4",
    "last_name": "last_name2",
    "masked_card_number": "masked_card_number2",
    "card_type": "bogus",
    "expiration_month": 216,
    "expiration_year": 246,
    "billing_address": "billing_address4",
    "billing_address_2": "billing_address_26",
    "billing_city": "billing_city8",
    "billing_state": "billing_state2",
    "billing_country": "billing_country2",
    "billing_zip": "billing_zip2",
    "current_vault": "eway",
    "vault_token": "vault_token6",
    "customer_vault_token": "customer_vault_token2",
    "customer_id": 82,
    "paypal_email": "paypal_email0",
    "payment_method_nonce": "payment_method_nonce0",
    "gateway_handle": "gateway_handle4",
    "cvv": "cvv8",
    "bank_name": "bank_name0",
    "bank_iban": "bank_iban4",
    "bank_routing_number": "bank_routing_number0",
    "bank_account_number": "bank_account_number6",
    "bank_branch_code": "bank_branch_code8",
    "bank_account_type": "checking",
    "bank_account_holder_type": "personal",
    "last_four": "last_four8"
  }
}
```

