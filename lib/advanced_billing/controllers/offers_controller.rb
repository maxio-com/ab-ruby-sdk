# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # OffersController
  class OffersController < BaseController
    # Create an offer within your Chargify site by sending a POST request.
    # ## Documentation
    # Offers allow you to package complicated combinations of products,
    # components and coupons into a convenient package which can then be
    # subscribed to just like products.
    # Once an offer is defined it can be used as an alternative to the product
    # when creating subscriptions.
    # Full documentation on how to use offers in the Chargify UI can be located
    # [here](https://chargify.zendesk.com/hc/en-us/articles/4407753852059).
    # ## Using a Product Price Point
    # You can optionally pass in a `product_price_point_id` that corresponds
    # with the `product_id` and the offer will use that price point. If a
    # `product_price_point_id` is not passed in, the product's default price
    # point will be used.
    # @param [CreateOfferRequest] body Optional parameter: Example:
    # @return [OfferResponse] response from the API call
    def create_offer(body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/offers.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(OfferResponse.method(:from_hash))
                   .local_error_template('422',
                                         'HTTP Response Not OK. Status code: {$statusCode}.'\
                                          ' Response: \'{$response.body}\'.',
                                         ErrorArrayMapResponseException))
        .execute
    end

    # This endpoint will list offers for a site.
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
    # @param [TrueClass | FalseClass] include_archived Optional parameter:
    # Include archived products. Use in query: `include_archived=true`.
    # @return [ListOffersResponse] response from the API call
    def list_offers(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/offers.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['include_archived'], key: 'include_archived'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListOffersResponse.method(:from_hash)))
        .execute
    end

    # This method allows you to list a specific offer's attributes. This is
    # different than list all offers for a site, as it requires an `offer_id`.
    # @param [Integer] offer_id Required parameter: The Chargify id of the
    # offer
    # @return [OfferResponse] response from the API call
    def read_offer(offer_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/offers/{offer_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(offer_id, key: 'offer_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(OfferResponse.method(:from_hash)))
        .execute
    end

    # Archive an existing offer. Please provide an `offer_id` in order to
    # archive the correct item.
    # @param [Integer] offer_id Required parameter: The Chargify id of the
    # offer
    # @return [void] response from the API call
    def archive_offer(offer_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/offers/{offer_id}/archive.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(offer_id, key: 'offer_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .is_response_void(true))
        .execute
    end

    # Unarchive a previously archived offer. Please provide an `offer_id` in
    # order to un-archive the correct item.
    # @param [Integer] offer_id Required parameter: The Chargify id of the
    # offer
    # @return [void] response from the API call
    def unarchive_offer(offer_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/offers/{offer_id}/unarchive.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(offer_id, key: 'offer_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .is_response_void(true))
        .execute
    end
  end
end
