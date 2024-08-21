# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SitesController
  class SitesController < BaseController
    # This endpoint allows you to fetch some site data.
    # Full documentation on Sites in the Advanced Billing UI can be located
    # [here](https://maxio.zendesk.com/hc/en-us/sections/24250550707085-Sites).
    # Specifically, the [Clearing Site
    # Data](https://maxio.zendesk.com/hc/en-us/articles/24250617028365-Clearing-
    # Site-Data) section is extremely relevant to this endpoint documentation.
    # #### Relationship invoicing enabled
    # If site has RI enabled then you will see more settings like:
    #     "customer_hierarchy_enabled": true,
    #     "whopays_enabled": true,
    #     "whopays_default_payer": "self"
    # You can read more about these settings here:
    #  [Who Pays & Customer
    # Hierarchy](https://maxio.zendesk.com/hc/en-us/articles/24252185211533-Cust
    # omer-Hierarchies-WhoPays)
    # @return [SiteResponse] response from the API call
    def read_site
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/site.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SiteResponse.method(:from_hash)))
        .execute
    end

    # This call is asynchronous and there may be a delay before the site data is
    # fully deleted. If you are clearing site data for an automated test, you
    # will need to build in a delay and/or check that there are no products,
    # etc., in the site before proceeding.
    # **This functionality will only work on sites in TEST mode. Attempts to
    # perform this on sites in “live” mode will result in a response of 403
    # FORBIDDEN.**
    # @param [CleanupScope] cleanup_scope Optional parameter: `all`: Will clear
    # all products, customers, and related subscriptions from the site.
    # `customers`: Will clear only customers and related subscriptions (leaving
    # the products untouched) for the site.  Revenue will also be reset to 0.
    # Use in query `cleanup_scope=all`.
    # @return [void] response from the API call
    def clear_site(cleanup_scope: CleanupScope::ALL)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/sites/clear_data.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(cleanup_scope, key: 'cleanup_scope'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .is_response_void(true))
        .execute
    end

    # This endpoint returns public keys used for Chargify.js.
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request. Default value is 20. The maximum
    # allowed values is 200; any per_page value over 200 will be changed to 200.
    # Use in query `per_page=200`.
    # @return [ListPublicKeysResponse] response from the API call
    def list_chargify_js_public_keys(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/chargify_js_keys.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListPublicKeysResponse.method(:from_hash)))
        .execute
    end
  end
end
