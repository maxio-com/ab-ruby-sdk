
# Update Payment Profile Request

## Structure

`UpdatePaymentProfileRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_profile` | [`UpdatePaymentProfile`](../../doc/models/update-payment-profile.md) | Required | - |

## Example (as JSON)

```json
{
  "payment_profile": {
    "full_number": "5424000000000015",
    "first_name": "first_name4",
    "last_name": "last_name2",
    "card_type": "bogus",
    "expiration_month": "expiration_month0",
    "expiration_year": "expiration_year4",
    "current_vault": "eway",
    "billing_address": "billing_address4",
    "billing_city": "billing_city8",
    "billing_state": "billing_state2",
    "billing_zip": "billing_zip2",
    "billing_country": "billing_country2",
    "billing_address_2": "billing_address_26"
  }
}
```

