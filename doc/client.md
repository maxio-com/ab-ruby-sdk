
# Client Class Documentation

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `subdomain` | `String` | The subdomain for your Chargify site.<br>*Default*: `'subdomain'` |
| `domain` | `String` | The Chargify server domain.<br>*Default*: `'chargify.com'` |
| `environment` | Environment | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 30** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `basic_auth_user_name` | `String` | The username to use with basic authentication |
| `basic_auth_password` | `String` | The password to use with basic authentication |

The API client can be initialized as follows:

```ruby
client = AdvancedBilling::Client.new(
  basic_auth_user_name: 'BasicAuthUserName',
  basic_auth_password: 'BasicAuthPassword',
  environment: Environment::PRODUCTION,
  subdomain: 'subdomain',
  domain: 'chargify.com'
)
```

## Maxio Advanced Billing Client

The gateway for the SDK. This class acts as a factory for the Controllers and also holds the configuration of the SDK.

## Controllers

| Name | Description |
|  --- | --- |
| api_exports | Gets APIExportsController |
| advance_invoice | Gets AdvanceInvoiceController |
| billing_portal | Gets BillingPortalController |
| coupons | Gets CouponsController |
| components | Gets ComponentsController |
| customers | Gets CustomersController |
| custom_fields | Gets CustomFieldsController |
| events | Gets EventsController |
| events_based_billing_segments | Gets EventsBasedBillingSegmentsController |
| insights | Gets InsightsController |
| invoices | Gets InvoicesController |
| offers | Gets OffersController |
| payment_profiles | Gets PaymentProfilesController |
| product_families | Gets ProductFamiliesController |
| products | Gets ProductsController |
| product_price_points | Gets ProductPricePointsController |
| proforma_invoices | Gets ProformaInvoicesController |
| reason_codes | Gets ReasonCodesController |
| referral_codes | Gets ReferralCodesController |
| sales_commissions | Gets SalesCommissionsController |
| sites | Gets SitesController |
| subscriptions | Gets SubscriptionsController |
| subscription_components | Gets SubscriptionComponentsController |
| subscription_groups | Gets SubscriptionGroupsController |
| subscription_group_invoice_account | Gets SubscriptionGroupInvoiceAccountController |
| subscription_group_status | Gets SubscriptionGroupStatusController |
| subscription_invoice_account | Gets SubscriptionInvoiceAccountController |
| subscription_notes | Gets SubscriptionNotesController |
| subscription_products | Gets SubscriptionProductsController |
| subscription_status | Gets SubscriptionStatusController |
| webhooks | Gets WebhooksController |

