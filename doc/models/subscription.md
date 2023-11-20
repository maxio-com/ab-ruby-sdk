
# Subscription

## Structure

`Subscription`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The subscription unique id within Chargify. |
| `state` | `String` | Optional | The current state of the subscription. Please see the documentation for [Subscription States](https://help.chargify.com/subscriptions/subscription-states.html) |
| `balance_in_cents` | `Integer` | Optional | Gives the current outstanding subscription balance in the number of cents. |
| `total_revenue_in_cents` | `Integer` | Optional | Gives the total revenue from the subscription in the number of cents. |
| `product_price_in_cents` | `Integer` | Optional | (Added Nov 5 2013) The recurring amount of the product (and version),currently subscribed. NOTE: this may differ from the current price of,the product, if you’ve changed the price of the product but haven’t,moved this subscription to a newer version. |
| `product_version_number` | `Integer` | Optional | The version of the product for the subscription. Note that this is a deprecated field kept for backwards-compatibility. |
| `current_period_ends_at` | `String` | Optional | Timestamp relating to the end of the current (recurring) period (i.e.,when the next regularly scheduled attempted charge will occur) |
| `next_assessment_at` | `String` | Optional | Timestamp that indicates when capture of payment will be tried or,retried. This value will usually track the current_period_ends_at, but,will diverge if a renewal payment fails and must be retried. In that,case, the current_period_ends_at will advance to the end of the next,period (time doesn’t stop because a payment was missed) but the,next_assessment_at will be scheduled for the auto-retry time (i.e. 24,hours in the future, in some cases) |
| `trial_started_at` | `String` | Optional | Timestamp for when the trial period (if any) began |
| `trial_ended_at` | `String` | Optional | Timestamp for when the trial period (if any) ended |
| `activated_at` | `String` | Optional | Timestamp for when the subscription began (i.e. when it came out of trial, or when it began in the case of no trial) |
| `expires_at` | `String` | Optional | Timestamp giving the expiration date of this subscription (if any) |
| `created_at` | `String` | Optional | The creation date for this subscription |
| `updated_at` | `String` | Optional | The date of last update for this subscription |
| `cancellation_message` | `String` | Optional | Seller-provided reason for, or note about, the cancellation. |
| `cancellation_method` | [Cancellation Method](../../doc/models/cancellation-method.md) \| nil | Optional | This is a container for one-of cases. |
| `cancel_at_end_of_period` | `TrueClass \| FalseClass` | Optional | Whether or not the subscription will (or has) canceled at the end of the period. |
| `canceled_at` | `String` | Optional | The timestamp of the most recent cancellation |
| `current_period_started_at` | `String` | Optional | Timestamp relating to the start of the current (recurring) period |
| `previous_state` | `String` | Optional | Only valid for webhook payloads The previous state for webhooks that have indicated a change in state. For normal API calls, this will always be the same as the state (current state) |
| `signup_payment_id` | `Integer` | Optional | The ID of the transaction that generated the revenue |
| `signup_revenue` | `String` | Optional | The revenue, formatted as a string of decimal separated dollars and,cents, from the subscription signup ($50.00 would be formatted as,50.00) |
| `delayed_cancel_at` | `String` | Optional | Timestamp for when the subscription is currently set to cancel. |
| `coupon_code` | `String` | Optional | (deprecated) The coupon code of the single coupon currently applied to the subscription. See coupon_codes instead as subscriptions can now have more than one coupon. |
| `snap_day` | `String` | Optional | The day of the month that the subscription will charge according to calendar billing rules, if used. |
| `payment_collection_method` | [Payment Collection Method](../../doc/models/payment-collection-method.md) \| nil | Optional | This is a container for one-of cases. |
| `customer` | [`Customer`](../../doc/models/customer.md) | Optional | - |
| `product` | [`Product`](../../doc/models/product.md) | Optional | - |
| `credit_card` | [`PaymentProfile`](../../doc/models/payment-profile.md) | Optional | - |
| `group` | [Subscription Group Inlined](../../doc/models/subscription-group-inlined.md) \| nil | Optional | This is a container for one-of cases. |
| `bank_account` | [`SubscriptionBankAccount`](../../doc/models/subscription-bank-account.md) | Optional | - |
| `payment_type` | `String` | Optional | The payment profile type for the active profile on file. |
| `referral_code` | `String` | Optional | The subscription's unique code that can be given to referrals. |
| `next_product_id` | `Integer` | Optional | If a delayed product change is scheduled, the ID of the product that the subscription will be changed to at the next renewal. |
| `next_product_handle` | `String` | Optional | If a delayed product change is scheduled, the handle of the product that the subscription will be changed to at the next renewal. |
| `coupon_use_count` | `Integer` | Optional | (deprecated) How many times the subscription's single coupon has been used. This field has no replacement for multiple coupons. |
| `coupon_uses_allowed` | `Integer` | Optional | (deprecated) How many times the subscription's single coupon may be used. This field has no replacement for multiple coupons. |
| `reason_code` | `String` | Optional | If the subscription is canceled, this is their churn code. |
| `automatically_resume_at` | `String` | Optional | The date the subscription is scheduled to automatically resume from the on_hold state. |
| `coupon_codes` | `Array<String>` | Optional | An array for all the coupons attached to the subscription. |
| `offer_id` | `Integer` | Optional | The ID of the offer associated with the subscription. |
| `payer_id` | `Integer` | Optional | On Relationship Invoicing, the ID of the individual paying for the subscription. Defaults to the Customer ID unless the 'Customer Hierarchies & WhoPays' feature is enabled. |
| `current_billing_amount_in_cents` | `Integer` | Optional | The balance in cents plus the estimated renewal amount in cents. |
| `product_price_point_id` | `Integer` | Optional | The product price point currently subscribed to. |
| `product_price_point_type` | `String` | Optional | One of the following: custom, default, catalog. |
| `next_product_price_point_id` | `Integer` | Optional | If a delayed product change is scheduled, the ID of the product price point that the subscription will be changed to at the next renewal. |
| `net_terms` | `Integer` | Optional | On Relationship Invoicing, the number of days before a renewal invoice is due. |
| `stored_credential_transaction_id` | `Integer` | Optional | For European sites subject to PSD2 and using 3D Secure, this can be used to reference a previous transaction for the customer. This will ensure the card will be charged successfully at renewal. |
| `reference` | `String` | Optional | The reference value (provided by your app) for the subscription itelf. |
| `on_hold_at` | `String` | Optional | The timestamp of the most recent on hold action. |
| `prepaid_dunning` | `TrueClass \| FalseClass` | Optional | Boolean representing whether the subscription is prepaid and currently in dunning. Only returned for Relationship Invoicing sites with the feature enabled |
| `coupons` | [`Array<SubscriptionIncludedCoupon>`](../../doc/models/subscription-included-coupon.md) | Optional | Additional coupon data. To use this data you also have to include the following param in the request`include[]=coupons`.<br>Only in Read Subscription Endpoint. |
| `dunning_communication_delay_enabled` | `TrueClass \| FalseClass` | Optional | Enable Communication Delay feature, making sure no communication (email or SMS) is sent to the Customer between 9PM and 8AM in time zone set by the `dunning_communication_delay_time_zone` attribute.<br>**Default**: `false` |
| `dunning_communication_delay_time_zone` | `String` | Optional | Time zone for the Dunning Communication Delay feature. |
| `receives_invoice_emails` | `TrueClass \| FalseClass` | Optional | - |
| `locale` | `String` | Optional | - |
| `currency` | `String` | Optional | - |
| `scheduled_cancellation_at` | `String` | Optional | - |
| `credit_balance_in_cents` | `Integer` | Optional | - |
| `prepayment_balance_in_cents` | `Integer` | Optional | - |

## Example (as JSON)

```json
{
  "credit_card": {
    "id": 10088716,
    "first_name": "Test",
    "last_name": "Subscription",
    "masked_card_number": "XXXX-XXXX-XXXX-1",
    "card_type": "bogus",
    "expiration_month": 1,
    "expiration_year": 2022,
    "customer_id": 14543792,
    "current_vault": "bogus",
    "vault_token": "1",
    "billing_address": "123 Montana Way",
    "billing_city": "Billings",
    "billing_state": "MT",
    "billing_zip": "59101",
    "billing_country": "US",
    "customer_vault_token": null,
    "billing_address_2": "",
    "payment_type": "credit_card",
    "site_gateway_setting_id": 1,
    "gateway_handle": null
  },
  "dunning_communication_delay_enabled": false,
  "dunning_communication_delay_time_zone": "\"Eastern Time (US & Canada)\"",
  "id": 96,
  "state": "state0",
  "balance_in_cents": 212,
  "total_revenue_in_cents": 136,
  "product_price_in_cents": 70
}
```

