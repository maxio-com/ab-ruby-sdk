
# Update Subscription

## Structure

`UpdateSubscription`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `credit_card_attributes` | [`CreditCardAttributes`](../../doc/models/credit-card-attributes.md) | Optional | - |
| `product_handle` | `String` | Optional | Set to the handle of a different product to change the subscription's product |
| `product_id` | `Integer` | Optional | Set to the id of a different product to change the subscription's product |
| `product_change_delayed` | `TrueClass \| FalseClass` | Optional | - |
| `next_product_id` | `String` | Optional | Set to an empty string to cancel a delayed product change. |
| `next_product_price_point_id` | `String` | Optional | - |
| `snap_day` | [SnapDay](../../doc/models/snap-day.md) \| Integer \| nil | Optional | This is a container for one-of cases. |
| `next_billing_at` | `DateTime` | Optional | - |
| `payment_collection_method` | `String` | Optional | - |
| `receives_invoice_emails` | `TrueClass \| FalseClass` | Optional | - |
| `net_terms` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `stored_credential_transaction_id` | `Integer` | Optional | - |
| `reference` | `String` | Optional | - |
| `custom_price` | [`SubscriptionCustomPrice`](../../doc/models/subscription-custom-price.md) | Optional | (Optional) Used in place of `product_price_point_id` to define a custom price point unique to the subscription |
| `components` | [`Array<UpdateSubscriptionComponent>`](../../doc/models/update-subscription-component.md) | Optional | (Optional) An array of component ids and custom prices to be added to the subscription. |
| `dunning_communication_delay_enabled` | `TrueClass \| FalseClass` | Optional | Enable Communication Delay feature, making sure no communication (email or SMS) is sent to the Customer between 9PM and 8AM in time zone set by the `dunning_communication_delay_time_zone` attribute. |
| `dunning_communication_delay_time_zone` | `String` | Optional | Time zone for the Dunning Communication Delay feature. |
| `product_price_point_id` | `Integer` | Optional | Set to change the current product's price point. |
| `product_price_point_handle` | `String` | Optional | Set to change the current product's price point. |

## Example (as JSON)

```json
{
  "dunning_communication_delay_time_zone": "\"Eastern Time (US & Canada)\"",
  "credit_card_attributes": {
    "full_number": "full_number2",
    "expiration_month": "expiration_month6",
    "expiration_year": "expiration_year2"
  },
  "product_handle": "product_handle2",
  "product_id": 114,
  "product_change_delayed": false,
  "next_product_id": "next_product_id8"
}
```

