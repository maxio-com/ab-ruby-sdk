
# List Subscription Groups Response

## Structure

`ListSubscriptionGroupsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_groups` | [`Array<ListSubscriptionGroupsItem>`](../../doc/models/list-subscription-groups-item.md) | Optional | - |
| `meta` | [`ListSubscriptionGroupsMeta`](../../doc/models/list-subscription-groups-meta.md) | Optional | - |

## Example (as JSON)

```json
{
  "subscription_groups": [
    {
      "uid": "uid2",
      "scheme": 166,
      "customer_id": 186,
      "payment_profile_id": 162,
      "subscription_ids": [
        40
      ],
      "primary_subscription_id": 114,
      "next_assessment_at": "2016-03-13T12:52:32.123Z",
      "state": "state2",
      "cancel_at_end_of_period": false,
      "account_balances": {
        "prepayments": {
          "balance_in_cents": 192,
          "automatic_balance_in_cents": 178,
          "remittance_balance_in_cents": 146
        },
        "service_credits": {
          "balance_in_cents": 84,
          "automatic_balance_in_cents": 70,
          "remittance_balance_in_cents": 38
        },
        "open_invoices": {
          "balance_in_cents": 40,
          "automatic_balance_in_cents": 202,
          "remittance_balance_in_cents": 170
        },
        "pending_discounts": {
          "balance_in_cents": 88,
          "automatic_balance_in_cents": 154,
          "remittance_balance_in_cents": 134
        }
      },
      "group_type": "single_customer"
    },
    {
      "uid": "uid2",
      "scheme": 166,
      "customer_id": 186,
      "payment_profile_id": 162,
      "subscription_ids": [
        40
      ],
      "primary_subscription_id": 114,
      "next_assessment_at": "2016-03-13T12:52:32.123Z",
      "state": "state2",
      "cancel_at_end_of_period": false,
      "account_balances": {
        "prepayments": {
          "balance_in_cents": 192,
          "automatic_balance_in_cents": 178,
          "remittance_balance_in_cents": 146
        },
        "service_credits": {
          "balance_in_cents": 84,
          "automatic_balance_in_cents": 70,
          "remittance_balance_in_cents": 38
        },
        "open_invoices": {
          "balance_in_cents": 40,
          "automatic_balance_in_cents": 202,
          "remittance_balance_in_cents": 170
        },
        "pending_discounts": {
          "balance_in_cents": 88,
          "automatic_balance_in_cents": 154,
          "remittance_balance_in_cents": 134
        }
      },
      "group_type": "single_customer"
    },
    {
      "uid": "uid2",
      "scheme": 166,
      "customer_id": 186,
      "payment_profile_id": 162,
      "subscription_ids": [
        40
      ],
      "primary_subscription_id": 114,
      "next_assessment_at": "2016-03-13T12:52:32.123Z",
      "state": "state2",
      "cancel_at_end_of_period": false,
      "account_balances": {
        "prepayments": {
          "balance_in_cents": 192,
          "automatic_balance_in_cents": 178,
          "remittance_balance_in_cents": 146
        },
        "service_credits": {
          "balance_in_cents": 84,
          "automatic_balance_in_cents": 70,
          "remittance_balance_in_cents": 38
        },
        "open_invoices": {
          "balance_in_cents": 40,
          "automatic_balance_in_cents": 202,
          "remittance_balance_in_cents": 170
        },
        "pending_discounts": {
          "balance_in_cents": 88,
          "automatic_balance_in_cents": 154,
          "remittance_balance_in_cents": 134
        }
      },
      "group_type": "single_customer"
    }
  ],
  "meta": {
    "current_page": 126,
    "total_count": 150
  }
}
```

