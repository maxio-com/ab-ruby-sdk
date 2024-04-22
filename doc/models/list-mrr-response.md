
# List MRR Response

## Structure

`ListMRRResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mrr` | [`ListMRRResponseResult`](../../doc/models/list-mrr-response-result.md) | Required | - |

## Example (as JSON)

```json
{
  "mrr": {
    "page": 30,
    "per_page": 198,
    "total_pages": 92,
    "total_entries": 188,
    "currency": "currency4",
    "currency_symbol": "currency_symbol2",
    "movements": [
      {
        "timestamp": "2016-03-13T12:52:32.123Z",
        "amount_in_cents": 130,
        "amount_formatted": "amount_formatted8",
        "description": "description6",
        "category": "category4",
        "breakouts": {
          "plan_amount_in_cents": 254,
          "plan_amount_formatted": "plan_amount_formatted0",
          "usage_amount_in_cents": 106,
          "usage_amount_formatted": "usage_amount_formatted8"
        },
        "line_items": [
          {
            "product_id": 88,
            "component_id": 0,
            "price_point_id": 232,
            "name": "name8",
            "mrr": 222,
            "mrr_movements": [
              {
                "amount": 90,
                "category": "category4",
                "subscriber_delta": 126,
                "lead_delta": 154
              },
              {
                "amount": 90,
                "category": "category4",
                "subscriber_delta": 126,
                "lead_delta": 154
              },
              {
                "amount": 90,
                "category": "category4",
                "subscriber_delta": 126,
                "lead_delta": 154
              }
            ],
            "quantity": 102,
            "prev_quantity": 62,
            "recurring": false
          }
        ],
        "subscription_id": 150,
        "subscriber_name": "subscriber_name8"
      },
      {
        "timestamp": "2016-03-13T12:52:32.123Z",
        "amount_in_cents": 130,
        "amount_formatted": "amount_formatted8",
        "description": "description6",
        "category": "category4",
        "breakouts": {
          "plan_amount_in_cents": 254,
          "plan_amount_formatted": "plan_amount_formatted0",
          "usage_amount_in_cents": 106,
          "usage_amount_formatted": "usage_amount_formatted8"
        },
        "line_items": [
          {
            "product_id": 88,
            "component_id": 0,
            "price_point_id": 232,
            "name": "name8",
            "mrr": 222,
            "mrr_movements": [
              {
                "amount": 90,
                "category": "category4",
                "subscriber_delta": 126,
                "lead_delta": 154
              },
              {
                "amount": 90,
                "category": "category4",
                "subscriber_delta": 126,
                "lead_delta": 154
              },
              {
                "amount": 90,
                "category": "category4",
                "subscriber_delta": 126,
                "lead_delta": 154
              }
            ],
            "quantity": 102,
            "prev_quantity": 62,
            "recurring": false
          }
        ],
        "subscription_id": 150,
        "subscriber_name": "subscriber_name8"
      }
    ]
  }
}
```

