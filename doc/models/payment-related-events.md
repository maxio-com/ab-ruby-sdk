
# Payment Related Events

## Structure

`PaymentRelatedEvents`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product_id` | `Integer` | Required | - |
| `account_transaction_id` | `Integer` | Required | - |

## Example

```ruby
payment_related_events = PaymentRelatedEvents.new(
  product_id: 208,
  account_transaction_id: 52
)
```

