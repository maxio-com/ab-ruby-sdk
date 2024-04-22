
# Update Subscription Request

## Structure

`UpdateSubscriptionRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription` | [`UpdateSubscription`](../../doc/models/update-subscription.md) | Required | - |

## Example (as JSON)

```json
{
  "subscription": {
    "dunning_communication_delay_time_zone": "\"Eastern Time (US & Canada)\"",
    "credit_card_attributes": {
      "full_number": "full_number2",
      "expiration_month": "expiration_month6",
      "expiration_year": "expiration_year2"
    },
    "product_handle": "product_handle6",
    "product_id": 206,
    "product_change_delayed": false,
    "next_product_id": "next_product_id6",
    "next_product_price_point_id": "next_product_price_point_id4",
    "snap_day": "end",
    "next_billing_at": "2016-03-13T12:52:32.123Z",
    "payment_collection_method": "payment_collection_method8",
    "receives_invoice_emails": false,
    "net_terms": "String1",
    "stored_credential_transaction_id": 40,
    "reference": "reference0",
    "custom_price": {
      "name": "name4",
      "handle": "handle0",
      "price_in_cents": "String3",
      "interval": "String3",
      "interval_unit": "day",
      "trial_price_in_cents": "String3",
      "trial_interval": "String5",
      "trial_interval_unit": "day",
      "initial_charge_in_cents": "String3",
      "initial_charge_after_trial": false,
      "expiration_interval": "String3",
      "expiration_interval_unit": "day",
      "tax_included": false
    },
    "components": [
      {
        "component_id": 108,
        "custom_price": {
          "pricing_scheme": "stairstep",
          "interval": 66,
          "interval_unit": "day",
          "prices": [
            {
              "starting_quantity": 242,
              "ending_quantity": 40,
              "unit_price": 23.26
            },
            {
              "starting_quantity": 242,
              "ending_quantity": 40,
              "unit_price": 23.26
            }
          ]
        }
      }
    ],
    "dunning_communication_delay_enabled": false
  }
}
```

