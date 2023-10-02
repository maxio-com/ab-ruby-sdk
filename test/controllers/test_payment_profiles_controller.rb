# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class PaymentProfilesControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.payment_profiles
    @response_catcher = @controller.http_call_back
  end

  # Use this endpoint to create a payment profile for a customer.
  #
  #Payment Profiles house the credit card, ACH (Authorize.Net or Stripe only,) or PayPal (Braintree only,) data for a customer. The payment information is attached to the customer within Chargify, as opposed to the Subscription itself.
  #
  #You must include a customer_id so that Chargify will attach it to the customer entry. If no customer_id is included the API will return a 404.
  #
  ### Create a Payment Profile for ACH usage
  #
  #If you would like to create a payment method that is a Bank Account applicable for ACH payments use the following:
  #```json
  #{
  #"payment_profile": {
  #  "customer_id": [Valid-Customer-ID],
  #  "bank_name": "Best Bank",
  #  "bank_routing_number": "021000089",
  #  "bank_account_number": "111111111111",
  #  "bank_account_type": "checking",
  #  "bank_account_holder_type": "business",
  #  "payment_type": "bank_account"
  #  }
  #}
  #```
  #
  ### Taxable Subscriptions
  #
  #If your subscriber pays taxes on their purchased product, and you are attempting to create or update the `payment_profile`, complete address information is required. For information on required address formatting to allow your subscriber to be taxed, please see our documentation [here](https://developers.chargify.com/docs/developer-docs/d2e9e34db740e-signups#taxes)
  #
  ### Payment Profile Documentation
  #
  #Full documentation on how Payment Profiles operate within Chargify can be located under the following links:
  #
  #+ [Subscriber Payment Details](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405212558349-Customers-Reference#customers-reference-0-0)
  #+ [Self Service Pages](https://maxio-chargify.zendesk.com/hc/en-us/articles/5404759627021) (Allows credit card updates by Subscriber)
  #+ [Public Signup Pages payment settings](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405267754381-Individual-Page-Settings#credit-card-settings)
  #
  ### Create a Payment Profile with a Chargify.js token
  #
  #```json
  #{
  #  "payment_profile": {
  #    "customer_id": 1036,
  #    "chargify_token": "tok_w68qcpnftyv53jk33jv6wk3w"
  #  }
  #}
  #```
  #
  ### Active Payment Methods
  #
  #Creating a new payment profile for a Customer via the API will not make that Payment Profile current for any of the Customer’s Subscriptions. In order to utilize the payment profile as the default, it must be set as the default payment profile for the subscription or subscription group.
  #
  ### Requirements
  #
  #Either the full_number, expiration_month, and expiration_year or if you have an existing vault_token from your gateway, that vault_token and the current_vault are required.
  #Passing in the vault_token and current_vault are only allowed when creating a new payment profile.
  #
  #### Taxable Subscriptions
  #
  #If your subscriber pays taxes on their purchased product, and you are attempting to create or update the `payment_profile`, complete address information is required. For information on required address formatting to allow your subscriber to be taxed, please see our documentation [here](https://developers.chargify.com/docs/developer-docs/d2e9e34db740e-signups#taxes)
  #
  ### BraintreeBlue
  #Some merchants use Braintree JavaScript libraries directly and then pass `payment_method_nonce` and/or `paypal_email` to create a payment profile. This implementation is deprecated and does not handle 3D Secure.  Instead, we have provided [Chargify.js](https://developers.chargify.com/docs/developer-docs/ZG9jOjE0NjAzNDI0-overview) which is continuously improved and supports Credit Cards (along with 3D Secure), PayPal and ApplePay payment types.
  #
  ### GoCardless
  #
  #For more information on GoCardless, please view the following resources:
  #
  #+ [Full documentation on GoCardless](https://maxio-chargify.zendesk.com/hc/en-us/articles/5404501889677)
  #
  #+ [Using Chargify.js with GoCardless - minimal example](https://developers.chargify.com/docs/developer-docs/ZG9jOjE0NjAzNDIy-examples#minimal-example-with-direct-debit-gocardless-gateway)
  #
  #+ [Using Chargify.js with GoCardless - full example](https://developers.chargify.com/docs/developer-docs/ZG9jOjE0NjAzNDIy-examples#full-example-with-direct-debit-gocardless-gateway)
  #
  #### GoCardless with Local Bank Details
  #
  #Following examples create customer, bank account and mandate in GoCardless:
  #
  #```json
  #{
  #  "payment_profile": {
  #    "customer_id": "Valid-Customer-ID",
  #    "bank_name": "Royal Bank of France",
  #    "bank_account_number": "0000000",
  #    "bank_routing_number": "0003",
  #    "bank_branch_code": "00006",
  #    "payment_type": "bank_account",
  #    "billing_address": "20 Place de la Gare",
  #    "billing_city": "Colombes",
  #    "billing_state": "Île-de-France",
  #    "billing_zip": "92700",
  #    "billing_country": "FR"
  #  }
  #}
  #```
  #
  #### GoCardless with IBAN
  #
  #```json
  #{
  #  "payment_profile": {
  #    "customer_id": "24907598",
  #    "bank_name": "French Bank",
  #    "bank_iban": "FR1420041010050500013M02606",
  #    "payment_type": "bank_account",
  #    "billing_address": "20 Place de la Gare",
  #    "billing_city": "Colombes",
  #    "billing_state": "Île-de-France",
  #    "billing_zip": "92700",
  #    "billing_country": "FR"
  #  }
  #}
  #```
  #
  #### Importing GoCardless
  #
  #If the customer, bank account, and mandate already exist in GoCardless, a payment profile can be created by using the IDs. In order to create masked versions of `bank_account_number` and `bank_routing_number` that are used to display within Chargify Admin UI, you can pass the last four digits for this fields which then will be saved in this form `XXXX[four-provided-digits]`.
  #
  #```json
  #{
  #  "payment_profile": {
  #    "customer_id": "24907598",
  #    "customer_vault_token": [Existing GoCardless Customer ID]
  #    "vault_token": [Existing GoCardless Mandate ID],
  #    "current_vault": "gocardless",
  #    "bank_name": "French Bank",
  #    "bank_account_number": [Last Four Of The Existing Account Number or IBAN if applicable],
  #    "bank_routing_number": [Last Four Of The Existing Routing Number],
  #    "payment_type": "bank_account",
  #    "billing_address": "20 Place de la Gare",
  #    "billing_city": "Colombes",
  #    "billing_state": "Île-de-France",
  #    "billing_zip": "92700",
  #    "billing_country": "FR"
  #  }
  #}
  #```
  #
  ### SEPA Direct Debit
  #
  #For more information on Stripe SEPA Direct Debit, please view the following resources:
  #
  #+ [Full documentation on Stripe SEPA Direct Debit](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405050826765-Stripe-SEPA-and-BECS-Direct-Debit)
  #
  #+ [Using Chargify.js with Stripe Direct Debit - minimal example](https://developers.chargify.com/docs/developer-docs/ZG9jOjE0NjAzNDIy-examples#minimal-example-with-sepa-or-becs-direct-debit-stripe-gateway)
  #
  #+ [Using Chargify.js with Stripe Direct Debit - full example](https://developers.chargify.com/docs/developer-docs/ZG9jOjE0NjAzNDIy-examples#full-example-with-sepa-direct-debit-stripe-gateway)
  #
  #### Stripe SEPA Direct Debit Payment Profiles
  #
  #The following example creates a customer, bank account and mandate in Stripe:
  #
  #
  #```json
  #{
  #  "payment_profile": {
  #    "customer_id": "24907598",
  #    "bank_name": "Deutsche bank",
  #    "bank_iban": "DE89370400440532013000",
  #    "payment_type": "bank_account",
  #    "billing_address": "Test",
  #    "billing_city": "Berlin",
  #    "billing_state": "Brandenburg",
  #    "billing_zip": "12345",
  #    "billing_country": "DE"
  #  }
  #}
  #```
  #
  ### Stripe BECS Direct Debit
  #
  #For more information on Stripe BECS Direct Debit, please view the following resources:
  #
  #+ [Full documentation on Stripe BECS Direct Debit](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405050826765-Stripe-SEPA-and-BECS-Direct-Debit)
  #
  #+ [Using Chargify.js with Stripe BECS Direct Debit - minimal example](https://developers.chargify.com/docs/developer-docs/ZG9jOjE0NjAzNDIy-examples#minimal-example-with-sepa-or-becs-direct-debit-stripe-gateway)
  #
  #+ [Using Chargify.js with Stripe BECS Direct Debit - full example](https://developers.chargify.com/docs/developer-docs/ZG9jOjE0NjAzNDIy-examples#full-example-with-sepa-direct-debit-stripe-gateway)
  #
  #### Stripe BECS Direct Debit Payment Profiles
  #
  #The following example creates a customer, bank account and mandate in Stripe:
  #
  #
  #```json
  #{
  #  "payment_profile": {
  #    "customer_id": "24907598",
  #    "bank_name": "Australian bank",
  #    "bank_branch_code": "000000",
  #    "bank_account_number": "000123456"
  #    "payment_type": "bank_account",
  #    "billing_address": "Test",
  #    "billing_city": "Stony Rise",
  #    "billing_state": "Tasmania",
  #    "billing_zip": "12345",
  #    "billing_country": "AU"
  #  }
  #}
  #```
  #
  ### 3D Secure - Checkout
  #
  #It may happen that a payment needs 3D Secure Authentication when the payment profile is created; this is referred to in our help docs as a [post-authentication flow](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405177432077#psd2-flows-pre-authentication-and-post-authentication). The server returns `422 Unprocessable Entity` in this case with the following response:
  #
  #```json
  #{
  #    "jsonapi": {
  #        "version": "1.0"
  #    },
  #    "errors": [
  #        {
  #            "title": "This card requires 3DSecure verification.",
  #            "detail": "This card requires 3D secure authentication. Redirect the customer to the URL from the action_link attribute to authenticate. Attach callback_url param to this URL if you want to be notified about the result of 3D Secure authentication. Attach redirect_url param to this URL if you want to redirect a customer back to your page after 3D Secure authentication. Example: https://checkout-test.chargifypay.test/3d-secure/checkout/pay_uerzhsxd5uhkbodx5jhvkg6yeu?one_time_token_id=93&callback_url=http://localhost:4000&redirect_url=https://yourpage.com will do a POST request to https://localhost:4000 after credit card is authenticated and will redirect a customer to https://yourpage.com after 3DS authentication.",
  #            "links": {
  #                "action_link": "https://checkout-test.chargifypay.test/3d-secure/checkout/pay_uerzhsxd5uhkbodx5jhvkg6yeu?one_time_token_id=93"
  #            }
  #        }
  #    ]
  #}
  #```
  #
  #To let the customer go through 3D Secure Authentication, they need to be redirected to the URL specified in `action_link`.
  #Optionally, you can specify `callback_url` parameter in the `action_link` URL if you’d like to be notified about the result of 3D Secure Authentication. The `callback_url` will return the following information:
  #
  #- whether the authentication was successful (`success`)
  #- the payment profile ID (`payment_profile_id`)
  #
  #Lastly, you can also specify a `redirect_url` parameter within the `action_link` URL if you’d like to redirect a customer back to your site.
  #
  #It is not possible to use `action_link` in an iframe inside a custom application. You have to redirect the customer directly to the `action_link`, then, to be notified about the result, use `redirect_url` or `callback_url`.
  #
  #The final URL that you send a customer to complete 3D Secure may resemble the following, where the first half is the `action_link` and the second half contains a `redirect_url` and `callback_url`: `https://checkout-test.chargifypay.test/3d-secure/checkout/pay_uerzhsxd5uhkbodx5jhvkg6yeu?one_time_token_id=93&callback_url=http://localhost:4000&redirect_url=https://yourpage.com`
  #
  #### Example Redirect Flow
  #
  #You may wish to redirect customers to different pages depending on whether their SCA was performed successfully. Here's an example flow to use as a reference:
  #
  #1. Create a payment profile via API; it requires 3DS
  #2. You receive a `action_link` in the response.
  #3. Use this `action_link` to, for example, connect with your internal resources or generate a session_id
  #4. Include 1 of those attributes inside the `callback_url` and `redirect_url` to be aware which “session” this applies to
  #5. Redirect the customer to the `action_link` with `callback_url` and `redirect_url` applied
  #6. After the customer finishes 3DS authentication, we let you know the result by making a request to applied `callback_url`.
  #7. After that, we redirect the customer to the `redirect_url`; at this point the result of authentication is known
  #8. Optionally, you can use the applied "msg" param in the `redirect_url` to determine whether it was successful or not
  def test_create_payment_profile
    # Parameters for the API call
    body = CreatePaymentProfileRequest.from_hash(APIHelper.json_deserialize(
      '{"payment_profile":{"customer_id":123,"bank_name":"Best Bank","bank_rou'\
      'ting_number":"021000089","bank_account_number":"111111111111","bank_acc'\
      'ount_type":"checking","bank_account_holder_type":"business","payment_ty'\
      'pe":"bank_account"}}', false))

    # Perform the API call through the SDK function
    result = @controller.create_payment_profile(body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"payment_profile":{"first_name":"Jessica","last_name":"Test","last_fou'\
      'r":"1111","card_type":"visa","expiration_month":10,"expiration_year":20'\
      '18,"customer_id":19195410,"current_vault":"bogus","vault_token":"1","bi'\
      'lling_address":"123 Main St.","billing_city":"Boston","billing_state":"'\
      'MA","billing_zip":"02120","billing_country":"US","customer_vault_token"'\
      ':null,"billing_address_2":null,"payment_type":"credit_card","site_gatew'\
      'ay_setting_id":1,"gateway_handle":"handle"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # This method will return all of the active `payment_profiles` for a Site, or for one Customer within a site.  If no payment profiles are found, this endpoint will return an empty array, not a 404.
  def test_list_payment_profiles
    # Parameters for the API call
    page = 1
    per_page = 20
    customer_id = nil

    # Perform the API call through the SDK function
    result = @controller.list_payment_profiles(page: page, per_page: per_page,
                                               customer_id: customer_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '[{"payment_profile":{"id":10089892,"first_name":"Chester","last_name":"'\
      'Tester","customer_id":14543792,"current_vault":"bogus","vault_token":"0'\
      '011223344","billing_address":"456 Juniper Court","billing_city":"Boulde'\
      'r","billing_state":"CO","billing_zip":"80302","billing_country":"US","c'\
      'ustomer_vault_token":null,"billing_address_2":"","bank_name":"Bank of K'\
      'ansas City","masked_bank_routing_number":"XXXX6789","masked_bank_accoun'\
      't_number":"XXXX3344","bank_account_type":"checking","bank_account_holde'\
      'r_type":"personal","payment_type":"bank_account","site_gateway_setting_'\
      'id":1,"gateway_handle":"handle"}},{"payment_profile":{"id":10188522,"fi'\
      'rst_name":"Frankie","last_name":"Tester","customer_id":14543712,"curren'\
      't_vault":"bogus","vault_token":"123456789","billing_address":"123 Monta'\
      'na Way","billing_city":"Los Angeles","billing_state":"CA","billing_zip"'\
      ':"90210","billing_country":"US","customer_vault_token":null,"billing_ad'\
      'dress_2":"","bank_name":"Bank of Kansas City","masked_bank_routing_numb'\
      'er":"XXXX6789","masked_bank_account_number":"XXXX6789","bank_account_ty'\
      'pe":"checking","bank_account_holder_type":"personal","payment_type":"ba'\
      'nk_account","site_gateway_setting_id":1,"gateway_handle":"handle"}}]'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end