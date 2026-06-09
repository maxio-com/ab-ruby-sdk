# Subscription Invoice Account

```ruby
subscription_invoice_account_controller = client.subscription_invoice_account
```

## Class Name

`SubscriptionInvoiceAccountController`

## Methods

* [Read Account Balances](../../doc/controllers/subscription-invoice-account.md#read-account-balances)
* [Create Prepayment](../../doc/controllers/subscription-invoice-account.md#create-prepayment)
* [List Prepayments](../../doc/controllers/subscription-invoice-account.md#list-prepayments)
* [Issue Service Credit](../../doc/controllers/subscription-invoice-account.md#issue-service-credit)
* [Deduct Service Credit](../../doc/controllers/subscription-invoice-account.md#deduct-service-credit)
* [List Service Credits](../../doc/controllers/subscription-invoice-account.md#list-service-credits)
* [Refund Prepayment](../../doc/controllers/subscription-invoice-account.md#refund-prepayment)


# Read Account Balances

Returns the `balance_in_cents` of the Subscription's Pending Discount, Service Credit, and Prepayment accounts, as well as the sum of the Subscription's open, payable invoices.

```ruby
def read_account_balances(subscription_id)
```

## Authentication

This endpoint requires [BasicAuth](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `Integer` | Template, Required | The Chargify id of the subscription. |

## Response Type

**200**: OK

[`AccountBalances`](../../doc/models/account-balances.md)

## Example Usage

```ruby
subscription_id = 222

result = subscription_invoice_account_controller.read_account_balances(subscription_id)
puts result
```


# Create Prepayment

Creates a prepayment for a subscription.

In order to specify a prepayment made against a subscription, specify the `amount, memo, details, method`.

When the `method` specified is `"credit_card_on_file"`, the prepayment amount will be collected using the default credit card payment profile and applied to the prepayment account balance.  This is especially useful for manual replenishment of prepaid subscriptions.

Note that passing `amount_in_cents` is now allowed.

## 3D Secure (3DS) Authentication post-authentication flow

When a payment requires 3DS Authentication to adhere to Strong Customer Authentication (SCA), the request enters a post-authentication flow where a 422 Unprocessable Entity status is returned with an action_link that will direct the customer through 3DS Authentication.

See the [3D Secure Post-Authentication Flow](https://docs.maxio.com/hc/en-us/articles/44277749524365-3D-Secure-Post-Authentication-Flow) article in the product documentation to learn how to manage the redirect flow.

```ruby
def create_prepayment(subscription_id,
                      body: nil)
```

## Authentication

This endpoint requires [BasicAuth](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `Integer` | Template, Required | The Chargify id of the subscription. |
| `body` | [`CreatePrepaymentRequest`](../../doc/models/create-prepayment-request.md) | Body, Optional | - |

## Response Type

**201**: Created

[`CreatePrepaymentResponse`](../../doc/models/create-prepayment-response.md)

## Example Usage

```ruby
subscription_id = 222

body = CreatePrepaymentRequest.new(
  prepayment: CreatePrepayment.new(
    amount: 100,
    details: 'John Doe signup for $100',
    memo: 'Signup for $100',
    method: CreatePrepaymentMethod::CHECK
  )
)

result = subscription_invoice_account_controller.create_prepayment(
  subscription_id,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "prepayment": {
    "id": 1,
    "subscription_id": 1,
    "amount_in_cents": 10000,
    "memo": "John Doe - Prepayment",
    "created_at": "2020-07-31T05:52:32-04:00",
    "starting_balance_in_cents": 0,
    "ending_balance_in_cents": -10000
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 422 | Unprocessable Entity (WebDAV) | `APIException` |


# List Prepayments

Lists a subscription's prepayments.

```ruby
def list_prepayments(options = {})
```

## Authentication

This endpoint requires [BasicAuth](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `Integer` | Template, Required | The Chargify id of the subscription. |
| `page` | `Integer` | Query, Optional | Result records are organized in pages. By default, the first page of results is displayed. The page parameter specifies a page number of results to fetch. You can start navigating through the pages to consume the results. You do this by passing in a page parameter. Retrieve the next page by adding ?page=2 to the query string. If there are no results to return, then an empty result set will be returned.<br>Use in query `page=1`.<br><br>**Default**: `1`<br><br>**Constraints**: `>= 1` |
| `per_page` | `Integer` | Query, Optional | This parameter indicates how many records to fetch in each request. Default value is 20. The maximum allowed values is 200; any per_page value over 200 will be changed to 200.<br>Use in query `per_page=200`.<br><br>**Default**: `20`<br><br>**Constraints**: `<= 200` |
| `filter` | [`ListPrepaymentsFilter`](../../doc/models/list-prepayments-filter.md) | Query, Optional | Filter to use for List Prepayments operations |

## Response Type

**200**: OK

[`PrepaymentsResponse`](../../doc/models/prepayments-response.md)

## Example Usage

```ruby
collect = {
  'subscription_id' => 222,
  'page' => 1,
  'per_page' => 50,
  'filter' => ListPrepaymentsFilter.new(
    date_field: ListPrepaymentDateField::CREATED_AT,
    start_date: Date.iso8601('2024-01-01'),
    end_date: Date.iso8601('2024-01-31')
  )
}

result = subscription_invoice_account_controller.list_prepayments(collect)
puts result
```

## Example Response *(as JSON)*

```json
{
  "prepayments": [
    {
      "id": 17,
      "subscription_id": 3558750,
      "amount_in_cents": 2000,
      "remaining_amount_in_cents": 1100,
      "refunded_amount_in_cents": 0,
      "external": true,
      "memo": "test",
      "details": "test details",
      "payment_type": "cash",
      "created_at": "2022-01-18T22:45:41+11:00"
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 404 | Not Found | `APIException` |


# Issue Service Credit

Adds a service credit to the subscription in the specified amount. The credit is subsequently applied to the next generated invoice.

```ruby
def issue_service_credit(subscription_id,
                         body: nil)
```

## Authentication

This endpoint requires [BasicAuth](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `Integer` | Template, Required | The Chargify id of the subscription. |
| `body` | [`IssueServiceCreditRequest`](../../doc/models/issue-service-credit-request.md) | Body, Optional | - |

## Response Type

**201**: Created

[`ServiceCredit`](../../doc/models/service-credit.md)

## Example Usage

```ruby
subscription_id = 222

body = IssueServiceCreditRequest.new(
  service_credit: IssueServiceCredit.new(
    amount: '1'
  )
)

result = subscription_invoice_account_controller.issue_service_credit(
  subscription_id,
  body: body
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "id": 101,
  "amount_in_cents": 1000,
  "ending_balance_in_cents": 2000,
  "entry_type": "Credit",
  "memo": "Credit to group account"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 422 | Unprocessable Entity (WebDAV) | `APIException` |


# Deduct Service Credit

Deducts a service credit from the subscription in the specified amount. The credit amount being deducted must be equal to or less than the current credit balance.

```ruby
def deduct_service_credit(subscription_id,
                          body: nil)
```

## Authentication

This endpoint requires [BasicAuth](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `Integer` | Template, Required | The Chargify id of the subscription. |
| `body` | [`DeductServiceCreditRequest`](../../doc/models/deduct-service-credit-request.md) | Body, Optional | - |

## Response Type

**201**: OK

`void`

## Example Usage

```ruby
subscription_id = 222

body = DeductServiceCreditRequest.new(
  deduction: DeductServiceCredit.new(
    amount: '1',
    memo: 'Deduction'
  )
)

subscription_invoice_account_controller.deduct_service_credit(
  subscription_id,
  body: body
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 422 | Unprocessable Entity (WebDAV) | `APIException` |


# List Service Credits

Lists a subscription's service credits.

```ruby
def list_service_credits(subscription_id,
                         page: 1,
                         per_page: 20,
                         direction: nil)
```

## Authentication

This endpoint requires [BasicAuth](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `Integer` | Template, Required | The Chargify id of the subscription. |
| `page` | `Integer` | Query, Optional | Result records are organized in pages. By default, the first page of results is displayed. The page parameter specifies a page number of results to fetch. You can start navigating through the pages to consume the results. You do this by passing in a page parameter. Retrieve the next page by adding ?page=2 to the query string. If there are no results to return, then an empty result set will be returned.<br>Use in query `page=1`.<br><br>**Default**: `1`<br><br>**Constraints**: `>= 1` |
| `per_page` | `Integer` | Query, Optional | This parameter indicates how many records to fetch in each request. Default value is 20. The maximum allowed values is 200; any per_page value over 200 will be changed to 200.<br>Use in query `per_page=200`.<br><br>**Default**: `20`<br><br>**Constraints**: `<= 200` |
| `direction` | [`SortingDirection`](../../doc/models/sorting-direction.md) | Query, Optional | Controls the order in which results are returned.<br>Use in query `direction=asc`. |

## Response Type

**200**: OK

[`ListServiceCreditsResponse`](../../doc/models/list-service-credits-response.md)

## Example Usage

```ruby
subscription_id = 222

page = 1

per_page = 50

result = subscription_invoice_account_controller.list_service_credits(
  subscription_id,
  page: page,
  per_page: per_page
)
puts result
```

## Example Response *(as JSON)*

```json
{
  "service_credits": [
    {
      "id": 68,
      "amount_in_cents": 2200,
      "ending_balance_in_cents": 1100,
      "entry_type": "Debit",
      "memo": "Service credit memo",
      "invoice_uid": "inv_brntdvmmqxc3j",
      "remaining_balance_in_cents": 1100,
      "created_at": "2025-04-01T09:54:49-04:00"
    },
    {
      "id": 67,
      "amount_in_cents": 3300,
      "ending_balance_in_cents": 3300,
      "entry_type": "Credit",
      "memo": "Service credit memo",
      "invoice_uid": null,
      "remaining_balance_in_cents": 1100,
      "created_at": "2025-03-05T16:06:08-05:00"
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 404 | Not Found | `APIException` |
| 422 | Unprocessable Entity | [`ErrorListResponseException`](../../doc/models/error-list-response-exception.md) |


# Refund Prepayment

Refunds a prepayment applied to a subscription, either fully or partially. The `prepayment_id` will be the account transaction ID of the original payment. The prepayment must have some amount remaining in order to be refunded.

The amount may be passed either as a decimal, with `amount`, or an integer in cents, with `amount_in_cents`.

```ruby
def refund_prepayment(subscription_id,
                      prepayment_id,
                      body: nil)
```

## Authentication

This endpoint requires [BasicAuth](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `Integer` | Template, Required | The Chargify id of the subscription. |
| `prepayment_id` | `Integer` | Template, Required | id of prepayment |
| `body` | [`RefundPrepaymentRequest`](../../doc/models/refund-prepayment-request.md) | Body, Optional | - |

## Response Type

**201**: Created

[`PrepaymentResponse`](../../doc/models/prepayment-response.md)

## Example Usage

```ruby
subscription_id = 222

prepayment_id = 228

result = subscription_invoice_account_controller.refund_prepayment(
  subscription_id,
  prepayment_id
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request | [`RefundPrepaymentBaseErrorsResponseException`](../../doc/models/refund-prepayment-base-errors-response-exception.md) |
| 404 | Not Found | `APIException` |
| 422 | Unprocessable Entity | `APIException` |

